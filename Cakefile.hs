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
                 | (takeExtension x) == ".urs" = return ()
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
    ur (pair "src/Uru.ur")

    collection "src/JQuery" [
        "jquery-1.9.1.js"
      , "JQuery.ur"
      ]

    collection "src/Bootstrap-v3.2" [
        "css/bootstrap.css"
      , "fonts/glyphicons-halflings-regular.eot"
      , "fonts/glyphicons-halflings-regular.svg"
      , "fonts/glyphicons-halflings-regular.ttf"
      , "fonts/glyphicons-halflings-regular.woff"
      , "Bootstrap.ur"
      ]

    collection "src/JQueryUI" [
        "jquery-ui.css"
      , "jquery-ui.js"
      , "JQueryUI.ur"
      ]

    collection "src/RespTabs" [
        "easy-responsive-tabs.css"
      , "easyResponsiveTabs.js"
      , "RespTabs.js"
      , "RespTabs.ur"
      ]

    collection "src/PikaChoose" [
        "jquery.jcarousel.min.js"
      , "jquery.pikachoose.min.js"
      , "PikaChoose.css"
      , "PikaChoose.js"
      , "PikaChoose.ur"
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
      , "NivoSlider.urs"
      ]

    collection "src/Zoom" [
        "jquery.zoom.min.js"
      , "Zoom.js"
      , "Zoom.css"
      , "Zoom.ur"
      , "Zoom.urs"
      ]

    {-

    collection "src/MegaMenu2" [
        "MegaMenu2.css"
      , "MegaMenu2.js"
      , "jquery.megamenu.js"
      , "MegaMenu2.ur"
      ]

      -}

  let tests = [
                "test/TestJQuery.urp"
              , "test/TestBootstrap.urp"
              , "test/TestJQUI.urp"
              , "test/TestRespTabs.urp"
              , "test/TestPikaChoose.urp"
              , "test/Test1.urp"
              , "test/TestZoom.urp"
              ]

  let mimes = do
        allow mime "text/javascript";
        allow mime "text/css";
        allow mime "image/jpeg";
        allow mime "image/png";
        allow mime "image/gif";
        allow mime "application/font-woff"
        allow mime "application/x-font-ttf"
        allow mime "image/svg+xml"
        allow mime "application/vnd.ms-fontobject"

  t <- forM tests $ \t -> do
    uwapp "-dbms sqlite" t $ do
      allow url "http://code.jquery.com/ui/1.10.3/jquery-ui.js";
      safeGet (t.="ur") "main"
      library u
      debug
      mimes

      collection "test" [
          "nemo.jpg"
        , "walle.jpg"
        ]
     
      ur (sys "list")
      ur (single (t.="ur"))

  tm <- uwapp "-dbms sqlite" "test/TestMain.urp" $ do
    allow url "http://code.jquery.com/ui/1.10.3/jquery-ui.js"
    safeGet "test/TestMain.ur" "main"
    mimes
    library u
    debug
    collection "test" [
        "nemo.jpg"
      , "walle.jpg"
      ]
    ur (sys "list")
    forM_ (map (.="ur") tests) $ \t -> do
      ur (single t)
      safeGet t "main"

    ur (single "test/TestMain.ur")
   

  rule $ do
    phony "clean"
    unsafeShell [cmd|rm -rf .cake3|]

  rule $ do
    phony "all"
    depend u
    depend t
    depend tm

main = do
  writeMake (file "Makefile") (project User)
  writeMake (file "Makefile.devel") (project Devel)

