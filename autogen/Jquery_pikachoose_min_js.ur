val binary = Jquery_pikachoose_min_js_c.binary
val text = Jquery_pikachoose_min_js_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
