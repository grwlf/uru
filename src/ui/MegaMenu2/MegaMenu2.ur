
con need = [JQ={}]
con out = need ++ [JQ_MM={}]

fun add [t] [x] [t~out] f r = 
  let
    val h = <xml>
                <script type="text/javascript" src={url (Jquery_megamenu_js.blobpage {})}/>
                <script type="text/javascript" src={url (MegaMenu2_js.blobpage {})}/>
                <link rel="stylesheet" href={url (MegaMenu2_css.blobpage {})}/>
              </xml> 
    val r' = Page.requireHeader [#JQ] (
             Page.addHeader [#JQ_MM] h (
               r))
  in
    f (MegaMenu2_js.megaMenu2Init) r'
  end

