val binary = Nivo_orman_css_c.binary
val text = Nivo_orman_css_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/css")
val geturl = url(blobpage {})
