datatype content = Walle_jpg | Nemo_jpg | Pnp_png | Flex_png | Pencil_drawing_png | Bluegreen_jpg | Logo_gif | Banner_topor_jpg | Banner_simone_jpg | Banner_rtos_jpg | Logo_simone_png | Logo_topor_png | Logo_rtos_png | Nivo_loading_gif | Nivo_bullets_png | Nivo_arrows_png
fun binary c = case c of
      Walle_jpg => Walle_jpg.binary ()
    | Nemo_jpg => Nemo_jpg.binary ()
    | Pnp_png => Pnp_png.binary ()
    | Flex_png => Flex_png.binary ()
    | Pencil_drawing_png => Pencil_drawing_png.binary ()
    | Bluegreen_jpg => Bluegreen_jpg.binary ()
    | Logo_gif => Logo_gif.binary ()
    | Banner_topor_jpg => Banner_topor_jpg.binary ()
    | Banner_simone_jpg => Banner_simone_jpg.binary ()
    | Banner_rtos_jpg => Banner_rtos_jpg.binary ()
    | Logo_simone_png => Logo_simone_png.binary ()
    | Logo_topor_png => Logo_topor_png.binary ()
    | Logo_rtos_png => Logo_rtos_png.binary ()
    | Nivo_loading_gif => Nivo_loading_gif.binary ()
    | Nivo_bullets_png => Nivo_bullets_png.binary ()
    | Nivo_arrows_png => Nivo_arrows_png.binary ()
fun blobpage c = case c of
      Walle_jpg => Walle_jpg.blobpage ()
    | Nemo_jpg => Nemo_jpg.blobpage ()
    | Pnp_png => Pnp_png.blobpage ()
    | Flex_png => Flex_png.blobpage ()
    | Pencil_drawing_png => Pencil_drawing_png.blobpage ()
    | Bluegreen_jpg => Bluegreen_jpg.blobpage ()
    | Logo_gif => Logo_gif.blobpage ()
    | Banner_topor_jpg => Banner_topor_jpg.blobpage ()
    | Banner_simone_jpg => Banner_simone_jpg.blobpage ()
    | Banner_rtos_jpg => Banner_rtos_jpg.blobpage ()
    | Logo_simone_png => Logo_simone_png.blobpage ()
    | Logo_topor_png => Logo_topor_png.blobpage ()
    | Logo_rtos_png => Logo_rtos_png.blobpage ()
    | Nivo_loading_gif => Nivo_loading_gif.blobpage ()
    | Nivo_bullets_png => Nivo_bullets_png.blobpage ()
    | Nivo_arrows_png => Nivo_arrows_png.blobpage ()
fun text c = case c of
      Walle_jpg => Walle_jpg.text ()
    | Nemo_jpg => Nemo_jpg.text ()
    | Pnp_png => Pnp_png.text ()
    | Flex_png => Flex_png.text ()
    | Pencil_drawing_png => Pencil_drawing_png.text ()
    | Bluegreen_jpg => Bluegreen_jpg.text ()
    | Logo_gif => Logo_gif.text ()
    | Banner_topor_jpg => Banner_topor_jpg.text ()
    | Banner_simone_jpg => Banner_simone_jpg.text ()
    | Banner_rtos_jpg => Banner_rtos_jpg.text ()
    | Logo_simone_png => Logo_simone_png.text ()
    | Logo_topor_png => Logo_topor_png.text ()
    | Logo_rtos_png => Logo_rtos_png.text ()
    | Nivo_loading_gif => Nivo_loading_gif.text ()
    | Nivo_bullets_png => Nivo_bullets_png.text ()
    | Nivo_arrows_png => Nivo_arrows_png.text ()
val urls =
     Walle_jpg.geturl :: 
     Nemo_jpg.geturl :: 
     Pnp_png.geturl :: 
     Flex_png.geturl :: 
     Pencil_drawing_png.geturl :: 
     Bluegreen_jpg.geturl :: 
     Logo_gif.geturl :: 
     Banner_topor_jpg.geturl :: 
     Banner_simone_jpg.geturl :: 
     Banner_rtos_jpg.geturl :: 
     Logo_simone_png.geturl :: 
     Logo_topor_png.geturl :: 
     Logo_rtos_png.geturl :: 
     Nivo_loading_gif.geturl :: 
     Nivo_bullets_png.geturl :: 
     Nivo_arrows_png.geturl :: 
       []
