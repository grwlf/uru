val binary = NivoSlider_js_c.binary
val text = NivoSlider_js_c.text
val nivo_init = NivoSlider_js_js.nivo_init
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
