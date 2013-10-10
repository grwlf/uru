val binary = Whytopor3_gif_c.binary
val text = Whytopor3_gif_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/gif")
val geturl = url(blobpage {})
