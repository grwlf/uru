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
    dir = takeDirectory urp
    files = map file [
       "src/Menu.js"
      ]
    in ruleM urp $ do
      depend (dir`rule`(shell [cmd| mkdir -pv $dir |]))
      shell [cmd| urembed  -c `which gcc` -I $(extvar "HOME")/local/include/urweb -o $urp $files |]

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


