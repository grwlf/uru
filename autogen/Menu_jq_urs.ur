val binary = Menu_jq_urs_c.binary
val text = Menu_jq_urs_c.text
fun blobpage {} = b <- binary () ; returnBlob b (blessMime "application/octet-stream")
val geturl = url(blobpage {})
