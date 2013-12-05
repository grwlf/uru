URU
---

URU is the collection of jQuery widgets, prepared to be used with
[Ur/Web](http://www.impredicative.com/ur/). The collection should be considered
as non-stabled since it uses patched compiler and a couple of non-stabled build
tools.


Requirements
============

The Ur/Web compiler in source form, sqlite3 and the POSIX env are required in
order to build the demo.

For the development, [cake3](https://github.com/grwlf/cake3) and
[urembed](https://github.com/grwlf/urembed) are needed as well. Both of them
require the [Haskell platform](http://www.haskell.org/platform/).

Building
========

  1. Obtain the Ur/Web from the [official repo](http://hg.impredicative.com/urweb).
  2. Patch the sources with the patches from the root directory, build and
     install.
  3. Clone and build [urscript library](https://github.com/grwlf/urscript)
        
        $ git clone https://github.com/grwlf/urscript
        $ ( cd urscript ; make ; )

  4. Unpack and build the URU sources

        $ git clone https://github.com/grwlf/uru 
        $ ( cd uru ; make ; )

  5. Launch ./uru/test/Test1.exe and visit http://localhost:8080/Test1/main

Notes
=====

  * Build system works as following:
      1. cake3 builds the ./Cakegen app taking Cakefile.hs (in Haskell) as
         it's input
      2. ./Cakegen generates two Makefile: Makefile and Makefile.devel. The
         first one is for non-developers. It doesn't require cake3 installed.
         The second one knows how to rebuild autogen/* and the Makefiles if
         someone change the resources
      3. GNU Makfile evaluates either Makefile or Makefile.devel
  * src/NivoSlider is the hardest case, since it requires $(window).load()
    event handler and uses tricky urls inside it's CSS.
  * Main function ends with a smile :)


