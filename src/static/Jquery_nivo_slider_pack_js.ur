val binary = Jquery_nivo_slider_pack_js_c.binary
val text = Jquery_nivo_slider_pack_js_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
