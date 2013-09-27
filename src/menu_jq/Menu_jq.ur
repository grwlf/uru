
fun add [t] [x] [t~[JQ,JQ_UI,JQM]] f r = 
  let
    val r' = Page.requireHeader [#JQ] (
             Page.requireHeader [#JQ_UI] (
             Page.addScript [#JQM] (url (Menu_jq_js.blobpage {})) (
               r)))
  in
    f (Menu_jq_js.init) r'
  end

