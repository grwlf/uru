
con need = [JQ=xhead, JQ_UI=xhead]
con out = need ++ [JQM=xhead]

fun add [t] [x] [t~out] f r = 
  let
    val r' = Page.requireHeader [#JQ] (
             Page.requireHeader [#JQ_UI] (
             Page.addScript [#JQM] (url (Menu_jq_js.blobpage {})) (
               r)))
  in
    f (Menu_jq_js.init) r'
  end

