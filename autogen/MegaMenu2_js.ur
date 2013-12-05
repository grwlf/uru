val binary = MegaMenu2_js_c.binary
val text = MegaMenu2_js_c.text
val mm2_init = MegaMenu2_js_js.mm2_init
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
