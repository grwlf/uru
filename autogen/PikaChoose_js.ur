val binary = PikaChoose_js_c.binary
val text = PikaChoose_js_c.text
val pkch_init = PikaChoose_js_js.pkch_init
val pkch_style = PikaChoose_js_js.pkch_style
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
val propagated_urls = 
    []
