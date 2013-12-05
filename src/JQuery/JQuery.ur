
con need = []
con out = need ++ [JQ=unit]

fun add [t] [x] [t~out] f r = 
  let
    val h = <xml>
              {Script.insert Page.javascript Jquery_1_9_1_js.geturl}
            </xml> 
    val r' = Page.addHeader [#JQ] h (return {}) r
  in
    f r'
  end


