URU
---

URU is the collection of jQuery widgets, prepared to be used with
[Ur/Web](http://www.impredicative.com/ur/). The collection should be considered
as non-stabled since it uses patched compiler and a couple of non-stabled build
tools.


Requirements
============

I've committed some intermediate files so I hope that all that you need to build
it is the POSIX environment, and the Ur/Web compiler in source form.  

For development, [cake3](https://github.com/grwlf/cake3) and
[urembed](https://github.com/grwlf/urembed) are needed as well. Both of them
require the [Haskell platform](http://www.haskell.org/platform/).

Building
========

  1. Patch and install the Ur/Web with the patches from the urweb/ directory
  2. Run the make in order to build the uru library
  3. Launch ./AppMM.exe and visit http://localhost:8080/AppMM/main
