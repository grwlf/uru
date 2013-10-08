URU
---

URU is the collection of jQuery widgets, prepared to be used with
[Ur/Web](http://www.impredicative.com/ur/). The collection should be considered
as non-stabled since it uses patched compiler and a couple of non-stabled build
tools.


Requirements
============

I've committed some intermediate files so I hope that all that you need in order
to build URU are the POSIX environment, and the Ur/Web compiler in source form
and the sqlite3 database engine.

For the development, [cake3](https://github.com/grwlf/cake3) and
[urembed](https://github.com/grwlf/urembed) are needed as well. Both of them
require the [Haskell platform](http://www.haskell.org/platform/).

Building
========

  1. Patch the Ur/Web with the patches from the urweb/ directory
  2. Install the patched Ur/Web
  3. Unpack the URU sources and run the following commands from the project's
     top directory:

        $ touch Cakegen
        $ touch Makefile
        $ make

  4. Launch ./AppMM.exe and visit http://localhost:8080/AppMM/main

Notes
=====

  * See the main function from the AppMM.ur for the overview of the approach.
    src/ui/Page.ur defines the poor man's continuation monad plus some basic
    combinators.
  * Urembed generates JavaScript FFI interfaces automatically. That is how
    files like src/ui/PikaChoose/PikaChoose.js is handled. Look inside
    src/static/PikaChoose_js.urs for the details.
  * src/static contains ur modules for static files. Urembed was used to
    generate them. This way, no additional web server is needed.
  * cake3 was used to build the ./Cakegen app witch generated the Makefile.
    Cakefile.hs (in Haskell) defines the rules.
  * src/ui/NivoSlider is the hardest case, since it requires $(window).load()
    event handler and uses tricky urls inside it's CSS.


