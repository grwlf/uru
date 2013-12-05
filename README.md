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
  3. Clone the [urscript library](https://github.com/grwlf/urscript)
        
        $ git clone https://github.com/grwlf/urscript

  4. Unpack and build the URU sources

        $ git clone https://github.com/grwlf/uru 
        $ ( cd uru ; make ; )

     Note, uru and urscript should live in the same directory

  5. Launch ./uru/test/Test1.exe and visit http://localhost:8080/Test1/main

Notes
=====

  * Build system works as following:
      1. [Cake3](https://github.com/grwlf/cake3) builds the ./Cakegen binary
         using ./Cakefile.hs (in Haskell) as it's input
      2. ./Cakegen generates all the UrWeb project files, the autogen/* files,
         the Makefile and the Makefile.devel. The first Makefile is for
         non-developers.  It doesn't require cake3 to be installed. The second
         Makefile knows how to rebuild itself as well as autogen/* if someone
         change the resources.
      3. GNU Make evaluates either Makefile or Makefile.devel and builds the
         library and the test executable.
  * src/NivoSlider is the hardest case, since it requires $(window).load()
    event handler and uses tricky urls inside it's CSS.
  * Main function ends with a smile :)


