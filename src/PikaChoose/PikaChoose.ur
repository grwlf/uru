
con need = [JQ={}]
con out = need ++ [PKCH={}]

fun add [t] [x] [t~out] css f r = 
  let
    val hdr = <xml>
                {Script.insert Page.javascript Jquery_pikachoose_min_js.geturl}
                {Script.insert Page.javascript Jquery_jcarousel_min_js.geturl}
                {Script.insert Page.javascript PikaChoose_js.geturl}
                <link rel="stylesheet" href={PikaChoose_css.geturl}/>
              </xml> 

    val init = 
      PikaChoose_js.pkch_init css;
      PikaChoose_js.pkch_style 817 390
      
    val r' = Page.addHeader [#PKCH] hdr (init) r
  in
    f r'
  end

