val binary = TinyMCE_js_c.binary
val text = TinyMCE_js_c.text
val imglist_new = TinyMCE_js_js.imglist_new
val imglist_insert = TinyMCE_js_js.imglist_insert
val tmce_init = TinyMCE_js_js.tmce_init
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
