val binary = Logo_rtos_png_c.binary
val text = Logo_rtos_png_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/png")
val geturl = url(blobpage {})
