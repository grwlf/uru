
style cmenu
style pika

fun main {} = Page.runPage (
  JQuery.add (
  JQueryUI.add (
  Bootstrap.add (
  RespTabs.add (fn tabs =>
  Menu_jq.add cmenu (
  PikaChoose.add pika (
  Page.withBody (
    
    t <- tabs (
      RespTabs.mktab "" "Tab1" <xml>blabla</xml> :: 
      RespTabs.mktab "" "Tab2" <xml>foobar</xml> :: 
      RespTabs.mktab "" "Tab3" <xml><b>Zzzzzz</b>zzzz</xml> :: 
      []);

    p <- return (<xml>
      <ul style="display:none" class={pika}>
        <li>
          <a link={main ()}><img src={Nemo_jpg.geturl}/></a>
          <span>This is an example of the basic theme.</span>
        </li>
        <li>
          <a link={main ()}><img src={Walle_jpg.geturl}/></a>
          <span>jCarousel is supported and can be integrated with PikaChoose!</span>
        </li>
      </ul>
      </xml>);

    return (
      <xml>
        <h1>Hello, menu</h1>
        <ul class={cmenu}>
          <li><a link={main {}}>Item1</a></li>
          <li><a link={main {}}>Item2</a></li>
          <li><a link={main {}}>Item3</a></li>
          <li> <a link={main {}}>Item4</a> </li>
        </ul>
        <h2>Hello, tabs</h2>
        {t}
        <h2>Hello, pikachoose</h2>
        {p}
      </xml>

    )))))))))

