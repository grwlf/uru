val binary = Img3_jpg_c.binary
val text = Img3_jpg_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/jpeg")
val geturl = url(blobpage {})
