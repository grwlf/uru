
con need = [JQ=unit]
con out = need ++ [JQ_UI=unit]

fun add [t] [x] [t~out] f r = 
  let
  val h = <xml>
            {Script.insert Page.javascript Jquery_ui_js.geturl}
            <link rel="stylesheet" href={url (Jquery_ui_css.blobpage {})}/>
          </xml> 
    val r' = Page.addHeader [#JQ_UI] h (return {}) r
  in
    f r'
  end


