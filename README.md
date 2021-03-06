URU
===

URU is the collection of jQuery widgets, prepared to be used with
[Ur/Web](http://www.impredicative.com/ur/).

Requirements
------------

The Ur/Web compiler in source form, sqlite3 and the POSIX env are required in
order to build the demo.

For the development, [cake3](https://github.com/grwlf/cake3) the Makefile
generator is needed. It requires the [Haskell platform](http://www.haskell.org/platform/).

Building
--------

  1. Obtain the Ur/Web from the [official repo](http://hg.impredicative.com/urweb).
  2. Patch the sources with the patches from the uru's root directory, build and
     install.
  3. Clone the [urscript library](https://github.com/grwlf/urscript)
        
        $ git clone https://github.com/grwlf/urscript

  4. Unpack and build the URU sources

        $ git clone https://github.com/grwlf/uru 
        $ ( cd uru ; make ; )

     Note, uru and urscript should live in the same directory

  5. Launch ./uru/test/Test1.exe and visit http://localhost:8080/Test1/main

Notes
-----

  * Makefile and Makefile.devel are provided. The first one is the default
    makefile which requires no special tools. The .devel version offers additional
    rules to embed styles, images and JavaScript into the UrWeb project. Also,
    Makefile.devel knows how to rebuild itself. The sequence is:
      1. [Cake3](https://github.com/grwlf/cake3) builds the ./Cakegen binary
         using ./Cakefile.hs (in Haskell) as it's input
      2. ./Cakegen generates all the UrWeb project files, the autogen/* files,
         the Makefile and the Makefile.devel. The first Makefile is for
         non-developers.  It doesn't require cake3 to be installed. The second
         Makefile knows how to rebuild itself as well as autogen/* if someone
         change the resources.
      3. GNU Make evaluates either Makefile or Makefile.devel and builds the
         library and the test executable.
  * src/NivoSlider is the hardest control to maintain, since it requires
    different styles, images and unusual $(window).load() event handler and
    uses tricky urls inside it's CSS.
  * [Main function](https://github.com/grwlf/uru/blob/master/test/Test1.ur) ends
    with a smile :)


TODO
----

  * Split Uru into several libraries, one library per control
  * Pass more options from UrWeb into JS. Currently, almost all options are
    hardcoded.
  * More controls?

