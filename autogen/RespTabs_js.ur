val binary = RespTabs_js_c.binary
val text = RespTabs_js_c.text
val rt_init = RespTabs_js_js.rt_init
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/javascript")
val geturl = url(blobpage {})
