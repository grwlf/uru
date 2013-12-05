val binary = Jquery_megamenu_js_c.binary
val text = Jquery_megamenu_js_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
