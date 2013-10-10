val binary = Whytopor1_gif_c.binary
val text = Whytopor1_gif_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/gif")
val geturl = url(blobpage {})
