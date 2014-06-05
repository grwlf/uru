val binary = PikaChoose_css_c.binary
val text = PikaChoose_css_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/css")
val geturl = url(blobpage {})
val propagated_urls = 
    []
