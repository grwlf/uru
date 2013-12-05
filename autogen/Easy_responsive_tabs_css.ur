val binary = Easy_responsive_tabs_css_c.binary
val text = Easy_responsive_tabs_css_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "text/css")
val geturl = url(blobpage {})
