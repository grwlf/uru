datatype content = Pnp_png | Flex_png | Pencil_drawing_png | Bluegreen_jpg
val binary : content -> transaction blob
val text : content -> transaction string
val blobpage : content -> transaction page
val urls : list url
