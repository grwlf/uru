{-# LANGUAGE RecursiveDo, QuasiQuotes #-}
module Cakefile where

import Development.Cake3
import Development.Cake3.Rules.UrWeb
import Development.Cake3.Utils.Find
import Cakefile_P

urflags = makevar "URFLAGS" ""

urp = file "AppMM.urp"

main = mdo

  files <- getDirectoryContentsRecursive projectroot
  fiml <- getDirectoryContentsRecursive (file "img/eremex")
  fpls <- getDirectoryContentsRecursive (file "img/pulsonix")

  let cfg = defaultConfig {
        urInclude = makevar "URINCL" "$(HOME)/local/include/urweb",
        urEmbed = [ ("StaticJS", filterExts [".js"] files)
                  , ("StaticCSS", filterExts [".css"] files)
                  , ("StaticImg", filterExts [".jpg", ".png", ".gif"] files)
                  , ("EremexImg", fiml)
                  , ("PulsonixImg", fpls)
                  ]}

  (exe,sql,db) <- urweb cfg urp $ do
    shell [cmd| urweb -dbms sqlite $urflags $(string (takeBaseName urp)) |]
    shell [cmd| -rm -rf $db |]
    shell [cmd| sqlite3 $db < $sql |]
    
  runMake_ $ do 
    place (phony "all" (depend exe))
    place (phony "run" (shell [cmd|$exe|]))
    place (phony "sql" (shell [cmd|sqlite3 $db|]))
    place defaultSelfUpdate
    place db

