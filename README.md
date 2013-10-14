URU
---

URU is the collection of jQuery widgets, prepared to be used with
[Ur/Web](http://www.impredicative.com/ur/). The collection should be considered
as non-stabled since it uses patched compiler and a couple of non-stabled build
tools.


Requirements
============

The Ur/Web compiler in source form, sqlite3 and the POSIX env are required in
order to build the demo and watch it running.

For the development, [cake3](https://github.com/grwlf/cake3) and
[urembed](https://github.com/grwlf/urembed) are needed as well. Both of them
require the [Haskell platform](http://www.haskell.org/platform/).

Building
========

  1. Obtain the Ur/Web from the [official repo](http://hg.impredicative.com/urweb).
  2. Patch the sources with the patches from the urweb/ directory, build and
     install. Apply CYGWIN HACK patch only if you are using Cygwin.
  3. Unpack the URU sources and run the following commands from the project's
     top directory:

        $ ./fixmake.sh # prevents rebuilding of static data
        $ make

  4. Launch ./AppMM.exe and visit http://localhost:8080/AppMM/main

Notes
=====

  * See the main function from the AppMM.ur for the overview of the approach.
    src/ui/Page.ur defines the continuation monad-like structure 'dpage'
    together with basic combinators. It is not a monad because the dpage is a
    type function and each combinator changes the final type to record the
    headers applied.
  * src/static contains ur modules for static files generated with Urembed. This
    way, no additional web server is needed.
  * Urembed generates JavaScript FFI interfaces automatically. That is how files
    like src/ui/PikaChoose/PikaChoose.js is handled. Look inside
    src/static/PikaChoose_js.urs for the details.
  * cake3 builds the ./Cakegen app from Cakefile.hs (in Haskell), ./Cakegen
    generates the Makefile. Normally, one have to rebuild the Makefile after
    adding new files or changing the App.urp file.
  * src/ui/NivoSlider is the hardest case, since it requires $(window).load()
    event handler and uses tricky urls inside it's CSS.
  * Main function ends with a smile :)


