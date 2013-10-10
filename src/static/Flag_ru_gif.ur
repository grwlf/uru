val binary = Flag_ru_gif_c.binary
val text = Flag_ru_gif_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/gif")
val geturl = url(blobpage {})
