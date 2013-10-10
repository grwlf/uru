val binary = Whytopor4_gif_c.binary
val text = Whytopor4_gif_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/gif")
val geturl = url(blobpage {})
