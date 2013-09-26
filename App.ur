
val empty = { Hdr = {} , Bdy = return <xml><body>aaaaaaaa</body></xml> }

fun main {} = Page.runPage empty (Page.bdy (return
  <xml><body>bbbbbbbb</body></xml>))
