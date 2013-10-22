val binary = Whyrtos5_jpg_c.binary
val text = Whyrtos5_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
