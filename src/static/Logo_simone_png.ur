val binary = Logo_simone_png_c.binary
val text = Logo_simone_png_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/png")
val geturl = url(blobpage {})
