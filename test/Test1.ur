
style cmenu
style nivo

fun main {} = Page.runPage (
  JQuery.add (
  JQueryUI.add (
  Bootstrap.add (
  RespTabs.add (fn tabs =>
  Menu_jq.add cmenu (
  NivoSlider.add nivo (fn slides =>
  Page.withBody (
    
    t <- tabs (
      RespTabs.mktab "" "Tab1" <xml>blabla</xml> :: 
      RespTabs.mktab "" "Tab2" <xml>foobar</xml> :: 
      RespTabs.mktab "" "Tab3" <xml><b>Zzzzzz</b>zzzz</xml> :: 
      []);

    s <- slides (
      {Url = Walle_jpg.geturl, Title = None} ::
      {Url = Nemo_jpg.geturl, Title = None} ::
      []);

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
        <h2>Hello, NivoSlider (doesn't work properly due to activeHead problem)</h2>
        {s}
      </xml>

    )))))))))

