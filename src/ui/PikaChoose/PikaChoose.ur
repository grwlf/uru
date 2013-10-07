
con need = [JQ={}]
con out = need ++ [PKCH={}]

fun add [t] [x] [t~out] css f r = 
  let
    val hdr = <xml>
                <script type={Page.javascript} src={url (Jquery_pikachoose_min_js.blobpage {})}/>
                <script type={Page.javascript} src={url (Jquery_jcarousel_min_js.blobpage {})}/>
                <script type={Page.javascript} src={url (PikaChoose_js.blobpage {})}/>
                <link rel="stylesheet" href={url (PikaChoose_css.blobpage {})}/>
              </xml> 

    val init = 
      PikaChoose_js.pkch_init css;
      PikaChoose_js.pkch_style 817 390
      
    val r' = Page.requireHeader [#JQ] (
             Page.addHeader [#PKCH] hdr (init) (
               r))
  in
    f r'
  end

