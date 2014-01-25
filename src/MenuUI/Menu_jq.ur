
con need = [JQ={}, JQ_UI={}]
con out = need ++ [JQM={}]

fun add [t] [x] [t~out] css f r = 
  let
    val h = <xml>
                <link rel="stylesheet" href={Menu_jq_css.geturl}/>
                {Script.insert Uru.javascript Menu_jq_js.geturl}
              </xml> 

    val l =
      Menu_jq_js.init css

  in
    f (
      Uru.addHeader h (
      Uru.addTag [#JQM] {} (
      Uru.addOnLoad l (
      r))))
  end

