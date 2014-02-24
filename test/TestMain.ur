
val topnav = classes Bootstrap.nav (classes Bootstrap.nav_pills null)

fun main {} : transaction page =
  Uru.run (
  JQuery.add (
  Bootstrap.add (
  Uru.withBody (fn _ =>
    return
     <xml>
        <div class={Bootstrap.container}>
          <ul class={topnav}>
            (* <ul class="nav nav-pills pull-right top-nav"> *)
                <li class={Bootstrap.nav}><b>Features</b></li>
                <li class={Bootstrap.nav}><b>Pricing</b></li>
                <li class={Bootstrap.nav}><b>Blog</b></li>
                <li class={Bootstrap.nav}><b>Sign in</b></li>
            </ul>
        </div>
        <div class={Bootstrap.container}>
        <div class={Bootstrap.row_fluid}>
        <div class={Bootstrap.span2}>
          <dl>
            <dd><a link={Test1.main {}}>Test1</a></dd>
            <dd><a link={TestBootstrap.main {}}>Bootstrap</a></dd>
            <dd><a link={TestRespTabs.main {}}>RespTabs</a></dd>
            <dd><a link={TestZoom.main {}}>Zoom</a></dd>
            <dd><a link={TestPikaChoose.main {}}>PikaChoose</a></dd>
            <dd><a link={TestJQuery.main {}}>JQuery</a></dd>
            <dd><a link={TestJQUI.main {}}>JQuery UI</a></dd>
          </dl>
        </div>
        <div class={Bootstrap.span10}>
          <h1>URU</h1>
          URU is the collection of jQuery widgets, prepared to be used with
          [Ur/Web](http://www.impredicative.com/ur/).
          <h2>Requirements</h2>
          <p>
            The Ur/Web compiler in source form, sqlite3 and the POSIX env are required in
            order to build the demo.
          </p>
          <p>
            For the development, [cake3](https://github.com/grwlf/cake3) the Makefile
            generator is needed. It requires the [Haskell
            platform](http://www.haskell.org/platform/).
          </p>
          <h2>Building</h2>
          <ul>
            <li>
              Obtain the Ur/Web from the [official repo](http://hg.impredicative.com/urweb).
            </li>
            <li>
              Patch the sources with the patches from the uru's root directory, build and
              install.
            </li>
            <li>
              Clone the [urscript library](https://github.com/grwlf/urscript)
              <pre>$ git clone https://github.com/grwlf/urscript</pre>
            </li>
            <li>
              Unpack and build the URU sources
              <pre>
              $ git clone https://github.com/grwlf/uru
              $ ( cd uru ; make ; )
              </pre>
              Note, uru and urscript should live in the same directory
            </li>
            <li>Launch ./uru/test/Test1.exe and visit http://localhost:8080/Test1/main</li>
          </ul>
          <h2>Notes</h2>
          <ul>
            <li>
              Makefile and Makefile.devel are provided. The first one is the default makefile
              which requires no special tools. The .devel version offers additional rules to
              embed styles, images and JavaScript into the UrWeb project. Also, Makefile.devel
              knows how to rebuild itself. The sequence is:
              <ul>
                <li>
                  [Cake3](https://github.com/grwlf/cake3) builds the ./Cakegen binary using
                  ./Cakefile.hs (in Haskell) as it's input
                </li>
                <li>
                  ./Cakegen generates all the UrWeb project files, the autogen* files, the
                  Makefile and the Makefile.devel. The first Makefile is for non-developers. It
                  doesn't require cake3 to be installed. The second Makefile knows how to rebuild
                  itself as well as autogen/* if someone change the resources.
                </li>
                <li>
                  GNU Make evaluates either Makefile or Makefile.devel and builds the library and
                  the test executable.
                </li>
              </ul>
            </li>
            <li>
              src/NivoSlider is the hardest control to maintain, since it requires different
              styles, images and unusual $(window).load() event handler and uses tricky urls
              inside it's CSS.
            </li>
            <li>
              [Main function](https://github.com/grwlf/uru/blob/master/test/Test1.ur) ends
              with a smile :)
            </li>
          </ul>
          <h2>TODO</h2>
          <ul>
            <li>Split Uru into several libraries, one library per control</li>
            <li>
              Pass more options from UrWeb into JS. Currently, almost all options are
              hardcoded.
            </li>
            <li>More controls?</li>
          </ul>
        </div>
        </div>
        </div>
      </xml> 
    ))))
