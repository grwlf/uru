val binary = Nivo_bullets_png_c.binary
val text = Nivo_bullets_png_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/png")
val geturl = url(blobpage {})
