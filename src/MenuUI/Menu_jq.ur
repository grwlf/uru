
con need = [JQ={}, JQ_UI={}]
con out = need ++ [JQM={}]

fun add [t] [x] [t~out] css f r = 
  let
    val hdr = <xml>
                <link rel="stylesheet" href={Menu_jq_css.geturl}/>
                {Script.insert Page.javascript Menu_jq_js.geturl}
              </xml> 

    val init =
      Menu_jq_js.init css

    val r' = Page.requireHeader [#JQ] (
             Page.requireHeader [#JQ_UI] (
             Page.addHeader [#JQM] hdr init (
               r)))
  in
    f r'
  end

