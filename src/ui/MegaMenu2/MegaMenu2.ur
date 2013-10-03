
con need = [JQ=unit]
con out = need ++ [JQ_MM=unit]

(* fun onload {} = return {} *)

fun add [t] [x] [t~out] css f r = 
  let
    val h = <xml>
              <script type={blessMime("text/javascript")} src={url (Jquery_megamenu_js.blobpage {})}/>
              <script type={blessMime("text/javascript")} src={url (MegaMenu2_js.blobpage {})}/>
              <link rel="stylesheet" href={url (MegaMenu2_css.blobpage {})}/>
            </xml> 
    val r' = Page.requireHeader [#JQ] (
             Page.addHeader [#JQ_MM] h (MegaMenu2_js.mm2_init css) (
               r))
  in
    f r'
  end

