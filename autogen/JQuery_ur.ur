val binary = JQuery_ur_c.binary
val text = JQuery_ur_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "application/octet-stream")
val geturl = url(blobpage {})
