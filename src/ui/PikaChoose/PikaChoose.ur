
con need = [JQ={}]
con out = need ++ [PKCH={}]

fun add [t] [x] [t~out] css f r = 
  let
    val javascript = blessMime "text/javascript"
    val h = <xml>
                <script type={javascript} src={url (Jquery_pikachoose_min_js.blobpage {})}/>
                <script type={javascript} src={url (Jquery_jcarousel_min_js.blobpage {})}/>
                <script type={javascript} src={url (PikaChoose_js.blobpage {})}/>
                <link rel="stylesheet" href={url (PikaChoose_css.blobpage {})}/>
              </xml> 
    val r' = Page.requireHeader [#JQ] (
             Page.addHeader [#PKCH] h (PikaChoose_js.pkch_init css) (
               r))
  in
    f r'
  end

