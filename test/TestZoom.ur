
fun main {} : transaction page =
  Uru.run (
  JQuery.add (
  Zoom.add (
  Uru.withBody (fn _ =>

    z <- Zoom.mkzoom (
      <xml>
        <img src={Nemo_jpg.geturl} width=300 height=99 alt="Daisy on the Ohoopee"/>
      </xml>);

    return
      <xml>
        Hello, Zoom
        <br/>
        {z}
        <br/>
        Click me and drag
      </xml>
    ))))
