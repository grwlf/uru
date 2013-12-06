val binary = Nivo_loading_gif_c.binary
val text = Nivo_loading_gif_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "image/gif")
val geturl = url(blobpage {})
