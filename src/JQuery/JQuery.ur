
con need = []
con out = need ++ [JQ=unit]

fun add [t] [t~out] f r = 
  let
    val h = <xml>
              {Script.insert Page.javascript Jquery_1_9_1_js.geturl}
            </xml> 
  in
    f (Page.addHeader h (Page.addTag [#JQ] {} r))
  end


