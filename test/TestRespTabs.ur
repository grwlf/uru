
fun main {} : transaction page =
  Uru.run (
  JQuery.add (
  RespTabs.add (fn mktabs =>
  Uru.withBody (fn _ =>

    t <- mktabs (
      RespTabs.mktab "" "Tab1" <xml>blablabl</xml> :: 
      RespTabs.mktab "" "Tab2" <xml>foobar</xml> :: 
      RespTabs.mktab "" "Tab3" <xml><b>Zzzzzz</b>zzzz</xml> :: 
      []);

    return
      <xml>
        Hello, RespTabs
        <br/>
        {t}
      </xml>
    ))))
