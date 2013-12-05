
con need = [JQ=unit]
con out = need ++ [JQ_MM=unit]

fun add [t] [x] [t~out] css f r = 
  let
    val h = <xml>
              {Script.insert Page.javascript Jquery_megamenu_js.geturl}
              {Script.insert Page.javascript MegaMenu2_js.geturl}
              <link rel="stylesheet" href={url (MegaMenu2_css.blobpage {})}/>
            </xml> 
    val r' = Page.requireHeader [#JQ] (
             Page.addHeader [#JQ_MM] h (MegaMenu2_js.mm2_init css) (
               r))
  in
    f r'
  end

