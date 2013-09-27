{-# LANGUAGE RecursiveDo, QuasiQuotes #-}
module Cakefile where

import Development.Cake3
import Development.Cake3.Rules.UrWeb
import Development.Cake3.Utils.Find
import Cakefile_P

pname = "App"

urflags = makevar "URFLAGS" ""

static_urp = file ("src" </> "static" </> "Static.urp")

main = mdo

  static_files <- filterExts [".js", ".css"] <$> getDirectoryContentsRecursive projectroot

  static <- urembed static_urp static_files $ \urembed_cmd -> do
    shell [cmd| $(urembed_cmd) -I $(extvar "HOME")/local/include/urweb |]

  (exe,sql,db) <- urweb (file pname) $ do
    depend static
    shell [cmd| urweb -dbms sqlite $urflags $(string pname) |]
    shell [cmd| -rm -rf $db |]
    shell [cmd| sqlite3 $db < $sql |]
    
  runMake $ do 
    place (phony "all" (depend exe))
    place (phony "sql" (shell [cmd| sqlite3 $db|]))
    place defaultSelfUpdate
    place db


