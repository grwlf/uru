val binary = Nemo_jpg_c.binary
val text = Nemo_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
val propagated_urls = 
    []
