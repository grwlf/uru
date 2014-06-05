val binary = Walle_jpg_c.binary
val text = Walle_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
val propagated_urls = 
    []
