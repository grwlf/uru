
con need = [JQ={}]
con out = need ++ [TMCE={}]

type imagelist = TinyMCE_js.tmce_imglist

fun add [t] [x] [t~out] css imgs f r = 
  let

    fun tl x = List.foldlM (fn u l => TinyMCE_js.imglist_insert (show u) u l) x imgs

    val javascript = Page.javascript
    val h = <xml>
              (* <script type={javascript} src={url (Tinymce_min_js.blobpage {})}/> *)
              <script type={javascript} src={url (TinyMCE_js.blobpage {})}/>
            </xml> 
    val r' = Page.requireHeader [#JQ] (
             Page.addHeader [#TMCE] h (x <- TinyMCE_js.imglist_new {} ; l <- tl x; TinyMCE_js.tmce_init css l) (
               r))
  in
    f r'
  end

