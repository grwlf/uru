val binary = Pencil_drawing_png_c.binary
val text = Pencil_drawing_png_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/png")
val geturl = url(blobpage {})
