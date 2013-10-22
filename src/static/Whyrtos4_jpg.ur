val binary = Whyrtos4_jpg_c.binary
val text = Whyrtos4_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
