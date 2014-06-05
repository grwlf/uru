val binary = Menu_jq_js_c.binary
val text = Menu_jq_js_c.text
val init = Menu_jq_js_js.init
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
val propagated_urls = 
    []
