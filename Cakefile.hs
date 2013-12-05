module Cakefile where

import Development.Cake3
import Development.Cake3.Ext.UrWeb
import Cakefile_P

instance IsString File where fromString = file

collection d xs = mapM_ choose xs where
  choose x | (takeExtension x) == ".ur" = ur (pair (d</>x))
           | otherwise = bin "autogen" (d </> x)

project = do
  prebuild [cmd|urweb -print-cinclude >/dev/null|]
  prebuild [cmd|mkdir -pv autogen |]

  u <- uwlib "Uru.urp" $ do

    library (standalone "../urscript/Script.urp")

    ur (sys "list")
    ur (pair "src/CSS.ur")
    ur (pair "src/Page.ur")

    collection "src/JQuery" [
        "jquery-1.9.1.js"
      , "JQuery.ur"
      ]

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

    collection "src/PikaChoose" [
        "jquery.jcarousel.min.js"
      , "jquery.pikachoose.min.js"
      , "PikaChoose.css"
      , "PikaChoose.js"
      , "PikaChoose.ur"
      ]

    collection "src/RespTabs" [
        "easy-responsive-tabs.css"
      , "easyResponsiveTabs.js"
      , "RespTabs.js"
      , "RespTabs.ur"
      ]

    collection "src/Bootstrap" [
        "bootstrap.css"
      , "Bootstrap.ur"
      ]

  t1 <- uwapp "-dbms sqlite" "test/Test1.urp" $ do
    allow url "http://code.jquery.com/ui/1.10.3/jquery-ui.js";
    allow mime "text/javascript";
    allow mime "text/css";
    library (internal u);
    debug
    safeGet "Test1/main"

    ur (sys "list")
    ur (single "test/Test1.ur")

  rule $ do
    phony "clean"
    unsafeShell [cmd|rm -rf .cake3 $(tempfiles u) $(tempfiles t1)|]

  rule $ do
    phony "all"
    depend u
    depend t1

main = do
  writeMake (file "Makefile") (project)
  writeMake (file "Makefile.devel") (selfUpdate >> project)

