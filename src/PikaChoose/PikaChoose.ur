
con need = [JQ={}]
con out = need ++ [PKCH={}]

fun add [t] [x] [t~out] css f r = 
  let
    val h = <xml>
                {Script.insert Uru.javascript Jquery_pikachoose_min_js.geturl}
                {Script.insert Uru.javascript Jquery_jcarousel_min_js.geturl}
                {Script.insert Uru.javascript PikaChoose_js.geturl}
                <link rel="stylesheet" href={PikaChoose_css.geturl}/>
              </xml> 

    val l = 
      PikaChoose_js.pkch_init css;
      PikaChoose_js.pkch_style 817 390
      
  in
    f (Uru.addHeader h (
       Uru.addTag [#PKCH] {} (
       Uru.addOnLoad l (
       r))))
  end

