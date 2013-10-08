val binary = Tinymce_min_js_c.binary
val text = Tinymce_min_js_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
