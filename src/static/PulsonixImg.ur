datatype content = Pnp_png | Flex_png | Pencil_drawing_png | Bluegreen_jpg
fun binary c = case c of
      Pnp_png => Pnp_png.binary ()
    | Flex_png => Flex_png.binary ()
    | Pencil_drawing_png => Pencil_drawing_png.binary ()
    | Bluegreen_jpg => Bluegreen_jpg.binary ()
fun blobpage c = case c of
      Pnp_png => Pnp_png.blobpage ()
    | Flex_png => Flex_png.blobpage ()
    | Pencil_drawing_png => Pencil_drawing_png.blobpage ()
    | Bluegreen_jpg => Bluegreen_jpg.blobpage ()
fun text c = case c of
      Pnp_png => Pnp_png.text ()
    | Flex_png => Flex_png.text ()
    | Pencil_drawing_png => Pencil_drawing_png.text ()
    | Bluegreen_jpg => Bluegreen_jpg.text ()
val urls =
     Pnp_png.geturl :: 
     Flex_png.geturl :: 
     Pencil_drawing_png.geturl :: 
     Bluegreen_jpg.geturl :: 
       []
