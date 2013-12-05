val binary = Bootstrap_css_c.binary
val text = Bootstrap_css_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/css")
val geturl = url(blobpage {})
