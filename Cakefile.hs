{-# LANGUAGE RecursiveDo, QuasiQuotes #-}
module Cakefile where

import Development.Cake3
import Development.Cake3.Rules.UrWeb
import Cakefile_P (file, cakefiles)

pname = "App"

urflags = makevar "URFLAGS" ""

main = mdo

  static <- let
    urp = file "src/static/Static.urp"
    outdir = takeDirectory urp
    files = map file [
        "src/menu_jq/menu_jq.js"
      , "src/menu_jq/menu_jq.css"
      ]
    in ruleM urp $ do
      depend (outdir `rule`(shell [cmd| mkdir -pv $outdir |]))
      shell [cmd| urembed -o $outdir -d Static.urp -c `which gcc` -I $(extvar "HOME")/local/include/urweb $files |]

  (exe,sql,db) <- urp (file (pname .= "urp")) $ do
    depend static
    shell [cmd| urweb -dbms sqlite $urflags $(string pname) |]
    shell [cmd| -rm -rf $db |]
    shell [cmd| sqlite3 $db < $sql |]
    
  runMake $ do 
    place (phony "all" (depend exe))
    place (phony "sql" (shell [cmd| sqlite3 $db|]))
    place defaultSelfUpdate
    place db


