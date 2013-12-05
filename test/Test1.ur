
style cmenu

fun main {} = Page.runPage (
  JQuery.add (
  JQueryUI.add (
  Bootstrap.add (
  RespTabs.add (fn tabs =>
  Menu_jq.add cmenu (
  Page.withBody (
    
    t <- tabs (
      RespTabs.mktab "" "Tab1" <xml>blabla</xml> :: 
      RespTabs.mktab "" "Tab2" <xml>foobar</xml> :: 
      RespTabs.mktab "" "Tab3" <xml><b>Zzzzzz</b>zzzz</xml> :: 
      []);

    return (
      <xml>
        <h1>Hello, menu</h1>
        <ul class={cmenu}>
          <li><a link={main {}}>Item1</a></li>
          <li><a link={main {}}>Item2</a></li>
          <li><a link={main {}}>Item3</a></li>
          <li><a link={main {}}>Item4</a></li>
        </ul>
        <h2>Hello, tabs</h2>
        {t}
      </xml>

    ))))))))

