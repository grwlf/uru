
val empty = { Hdr = {} , Bdy = return <xml><body>aaaaaaaa</body></xml> }

val addJQ = Page.addScript [#JQ]

style cmenu

fun main {} = Page.runPage empty (fn p =>
  Menu_jq.add cmenu (
    let 
      val u = bless "http://code.jquery.com/ui/1.10.3/jquery-ui.js" 
      val p'' = addJQ u p
      val p3 = Page.addScript [#JQ1] u p''
      val p4 = Page.addScript [#JQ2] u p3
    in Page.bdy (return
      <xml>
      <body>
        bbbbbbbb
      </body>
      </xml>
    ) p4
    end))
