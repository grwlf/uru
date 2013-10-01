
con need = [JQ=xhead]
con out = need ++ [PKCH=xhead]

fun add [t] [x] [t~out] f r = 
  let
    val h = <xml>
                <script type="text/javascript" src={url (Jquery_pikachoose_js.blobpage {})}/>
                <script type="text/javascript" src={url (PikaChoose_js.blobpage {})}/>
              </xml> 
    val r' = Page.requireHeader [#JQ] (
             Page.addHeader [#PKCH] h (
               r))
  in
    f (PikaChoose_js.pikaChooseInit) r'
  end

