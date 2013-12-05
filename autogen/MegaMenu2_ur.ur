val binary = MegaMenu2_ur_c.binary
val text = MegaMenu2_ur_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "application/octet-stream")
val geturl = url(blobpage {})
