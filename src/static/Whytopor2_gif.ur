val binary = Whytopor2_gif_c.binary
val text = Whytopor2_gif_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/gif")
val geturl = url(blobpage {})
