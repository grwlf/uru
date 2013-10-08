val binary = Img1_jpg_c.binary
val text = Img1_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
