
fun main {} : transaction page =
  Uru.run (
  JQuery.add (
  Bootstrap.add (
  Uru.withBody (fn _ =>
    return
      <xml>
        <div class={Bootstrap.container}>
          This is the test page for the URU library
          <br/>
          <dl>
            <dd>
              <a link={Test1.main {}}>Test1</a>
            </dd>
            <dd>
              <a link={TestBootstrap.main {}}>Bootstrap</a>
            </dd>
            <dd>
              <a link={TestRespTabs.main {}}>RespTabs</a>
            </dd>
            <dd>
              <a link={TestZoom.main {}}>Zoom</a>
            </dd>
            <dd>
              <a link={TestPikaChoose.main {}}>PikaChoose</a>
            </dd>
            <dd>
              <a link={TestJQuery.main {}}>JQuery</a>
            </dd>
            <dd>
              <a link={TestJQUI.main {}}>JQuery UI</a>
            </dd>
          </dl>
          
        </div>
      </xml>
    ))))
