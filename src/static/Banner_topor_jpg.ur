val binary = Banner_topor_jpg_c.binary
val text = Banner_topor_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
