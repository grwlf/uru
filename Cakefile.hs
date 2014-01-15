module Cakefile where

import Development.Cake3
import Development.Cake3.Ext.UrWeb
import Cakefile_P

instance IsString File where fromString = file


data Mode = User | Devel
  deriving(Eq,Show)

project mode = do

  when (mode == Devel) $ do
    selfUpdate
    return ()

  let collection d xs = mapM_ choose xs where
        choose x | (takeExtension x) == ".ur" = ur (pair (d</>x))
                 | otherwise =
                    let un = file $ "autogen" </> ((takeFileName x) ++ ".urp")
                    in case mode of
                      User -> library' $ do
                        externalMake2 un
                      Devel -> library' $ do
                        rule $ shell [cmd|urembed -o @un $(d</>x)|]

  prebuild [cmd|urweb -print-cinclude >/dev/null|]
  prebuild [cmd|mkdir -pv autogen |]

  u <- uwlib "lib.urp" $ do

    allow url "http://nivo.dev7studios.com"
    allow url "http://plugins.jquery.com/*"

    rewrite style "Bootstrap/* [-]"
    rewrite style "Bootstrap/table_ table"

    library' (externalMake "../urscript/lib.urp")

    ur (sys "list")
    ur (pair "src/CSS.ur")
    ur (pair "src/Page.ur")

    collection "src/JQuery" [
        "jquery-1.9.1.js"
      , "JQuery.ur"
      ]

    collection "src/Bootstrap" [
        "bootstrap.css"
      , "Bootstrap.ur"
      ]

    collection "src/RespTabs" [
        "easy-responsive-tabs.css"
      , "easyResponsiveTabs.js"
      , "RespTabs.js"
      , "RespTabs.ur"
      ]

{-
    collection "src/JQueryUI" [
        "jquery-ui.css"
      , "jquery-ui.js"
      , "JQueryUI.ur"
      ]

    collection "src/MegaMenu2" [
        "MegaMenu2.css"
      , "MegaMenu2.js"
      , "jquery.megamenu.js"
      , "MegaMenu2.ur"
      ]

    collection "src/MenuUI" [
        "menu_jq.css"
      , "menu_jq.js"
      , "Menu_jq.ur"
      ]

    collection "src/NivoSlider" [
        "jquery.nivo.slider.pack.js"
      , "nivo-arrows.png"
      , "nivo-bullets.png"
      , "nivo-default.css"
      , "nivo-loading.gif"
      , "nivo-slider.css"
      , "NivoSlider.js"
      , "NivoSlider.ur"
      ]

    collection "src/PikaChoose" [
        "jquery.jcarousel.min.js"
      , "jquery.pikachoose.min.js"
      , "PikaChoose.css"
      , "PikaChoose.js"
      , "PikaChoose.ur"
      ]

      -}

  t0 <- uwapp "-dbms sqlite" "test/Test0.urp" $ do
    allow mime "text/javascript";
    allow mime "text/css";
    allow mime "image/jpeg";
    allow mime "image/png";
    allow mime "image/gif";
    library u;
    debug
    safeGet "Test0/main"
    ur (pair "test/Test0.ur")

  t1 <- uwapp "-dbms sqlite" "test/Test1.urp" $ do
    allow url "http://code.jquery.com/ui/1.10.3/jquery-ui.js";
    allow mime "text/javascript";
    allow mime "text/css";
    allow mime "image/jpeg";
    allow mime "image/png";
    allow mime "image/gif";
    library u;
    debug
    safeGet "Test1/main"

    collection "test" [
        "nemo.jpg"
      , "walle.jpg"
      ]
     
    ur (sys "list")
    ur (pair "test/Test1.ur")

  rule $ do
    phony "clean"
    unsafeShell [cmd|rm -rf .cake3|]

  rule $ do
    phony "all"
    depend u
    -- depend t1
    depend t0

main = do
  writeMake (file "Makefile") (project User)
  writeMake (file "Makefile.devel") (project Devel)

