val binary = Banner_simone_jpg_c.binary
val text = Banner_simone_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
