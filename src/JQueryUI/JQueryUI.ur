
con need = [JQ=unit]
con out = need ++ [JQ_UI=unit]

fun add [t] [x] [t~out] f r = 
  let
  val h = <xml>
            {Script.insert Uru.javascript Jquery_ui_js.geturl}
            <link rel="stylesheet" href={url (Jquery_ui_css.blobpage {})}/>
          </xml> 
  in
    f (Uru.addHeader h (Uru.addTag [#JQ_UI] {} r))
  end


