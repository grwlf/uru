val binary = Zoom_js_c.binary
val text = Zoom_js_c.text
val zoom_on = Zoom_js_js.zoom_on
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
val propagated_urls = 
    []
