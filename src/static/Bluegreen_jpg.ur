val binary = Bluegreen_jpg_c.binary
val text = Bluegreen_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
