datatype content = Banner1_png | Banner2_png | Walle_jpg | Nemo_jpg | Pnp_png | Flex_png | Pencil_drawing_png | Bluegreen_jpg | Logo_gif | Flag_uk_gif | Flag_ru_gif | Flag_jp_gif | Whytopor2_gif | Whytopor4_gif | Whytopor1_gif | Whytopor3_gif | Logo_rtos_png | Whyrtos4_jpg | Whyrtos1_jpg | Whyrtos2_jpg | Whyrtos5_jpg | Whyrtos3_jpg | Banner_topor_jpg | Banner_simone_jpg | Banner_rtos_jpg | Logo_simone_png | Logo_topor_png | Nivo_loading_gif | Nivo_bullets_png | Nivo_arrows_png
fun binary c = case c of
      Banner1_png => Banner1_png.binary ()
    | Banner2_png => Banner2_png.binary ()
    | Walle_jpg => Walle_jpg.binary ()
    | Nemo_jpg => Nemo_jpg.binary ()
    | Pnp_png => Pnp_png.binary ()
    | Flex_png => Flex_png.binary ()
    | Pencil_drawing_png => Pencil_drawing_png.binary ()
    | Bluegreen_jpg => Bluegreen_jpg.binary ()
    | Logo_gif => Logo_gif.binary ()
    | Flag_uk_gif => Flag_uk_gif.binary ()
    | Flag_ru_gif => Flag_ru_gif.binary ()
    | Flag_jp_gif => Flag_jp_gif.binary ()
    | Whytopor2_gif => Whytopor2_gif.binary ()
    | Whytopor4_gif => Whytopor4_gif.binary ()
    | Whytopor1_gif => Whytopor1_gif.binary ()
    | Whytopor3_gif => Whytopor3_gif.binary ()
    | Logo_rtos_png => Logo_rtos_png.binary ()
    | Whyrtos4_jpg => Whyrtos4_jpg.binary ()
    | Whyrtos1_jpg => Whyrtos1_jpg.binary ()
    | Whyrtos2_jpg => Whyrtos2_jpg.binary ()
    | Whyrtos5_jpg => Whyrtos5_jpg.binary ()
    | Whyrtos3_jpg => Whyrtos3_jpg.binary ()
    | Banner_topor_jpg => Banner_topor_jpg.binary ()
    | Banner_simone_jpg => Banner_simone_jpg.binary ()
    | Banner_rtos_jpg => Banner_rtos_jpg.binary ()
    | Logo_simone_png => Logo_simone_png.binary ()
    | Logo_topor_png => Logo_topor_png.binary ()
    | Nivo_loading_gif => Nivo_loading_gif.binary ()
    | Nivo_bullets_png => Nivo_bullets_png.binary ()
    | Nivo_arrows_png => Nivo_arrows_png.binary ()
fun blobpage c = case c of
      Banner1_png => Banner1_png.blobpage ()
    | Banner2_png => Banner2_png.blobpage ()
    | Walle_jpg => Walle_jpg.blobpage ()
    | Nemo_jpg => Nemo_jpg.blobpage ()
    | Pnp_png => Pnp_png.blobpage ()
    | Flex_png => Flex_png.blobpage ()
    | Pencil_drawing_png => Pencil_drawing_png.blobpage ()
    | Bluegreen_jpg => Bluegreen_jpg.blobpage ()
    | Logo_gif => Logo_gif.blobpage ()
    | Flag_uk_gif => Flag_uk_gif.blobpage ()
    | Flag_ru_gif => Flag_ru_gif.blobpage ()
    | Flag_jp_gif => Flag_jp_gif.blobpage ()
    | Whytopor2_gif => Whytopor2_gif.blobpage ()
    | Whytopor4_gif => Whytopor4_gif.blobpage ()
    | Whytopor1_gif => Whytopor1_gif.blobpage ()
    | Whytopor3_gif => Whytopor3_gif.blobpage ()
    | Logo_rtos_png => Logo_rtos_png.blobpage ()
    | Whyrtos4_jpg => Whyrtos4_jpg.blobpage ()
    | Whyrtos1_jpg => Whyrtos1_jpg.blobpage ()
    | Whyrtos2_jpg => Whyrtos2_jpg.blobpage ()
    | Whyrtos5_jpg => Whyrtos5_jpg.blobpage ()
    | Whyrtos3_jpg => Whyrtos3_jpg.blobpage ()
    | Banner_topor_jpg => Banner_topor_jpg.blobpage ()
    | Banner_simone_jpg => Banner_simone_jpg.blobpage ()
    | Banner_rtos_jpg => Banner_rtos_jpg.blobpage ()
    | Logo_simone_png => Logo_simone_png.blobpage ()
    | Logo_topor_png => Logo_topor_png.blobpage ()
    | Nivo_loading_gif => Nivo_loading_gif.blobpage ()
    | Nivo_bullets_png => Nivo_bullets_png.blobpage ()
    | Nivo_arrows_png => Nivo_arrows_png.blobpage ()
fun text c = case c of
      Banner1_png => Banner1_png.text ()
    | Banner2_png => Banner2_png.text ()
    | Walle_jpg => Walle_jpg.text ()
    | Nemo_jpg => Nemo_jpg.text ()
    | Pnp_png => Pnp_png.text ()
    | Flex_png => Flex_png.text ()
    | Pencil_drawing_png => Pencil_drawing_png.text ()
    | Bluegreen_jpg => Bluegreen_jpg.text ()
    | Logo_gif => Logo_gif.text ()
    | Flag_uk_gif => Flag_uk_gif.text ()
    | Flag_ru_gif => Flag_ru_gif.text ()
    | Flag_jp_gif => Flag_jp_gif.text ()
    | Whytopor2_gif => Whytopor2_gif.text ()
    | Whytopor4_gif => Whytopor4_gif.text ()
    | Whytopor1_gif => Whytopor1_gif.text ()
    | Whytopor3_gif => Whytopor3_gif.text ()
    | Logo_rtos_png => Logo_rtos_png.text ()
    | Whyrtos4_jpg => Whyrtos4_jpg.text ()
    | Whyrtos1_jpg => Whyrtos1_jpg.text ()
    | Whyrtos2_jpg => Whyrtos2_jpg.text ()
    | Whyrtos5_jpg => Whyrtos5_jpg.text ()
    | Whyrtos3_jpg => Whyrtos3_jpg.text ()
    | Banner_topor_jpg => Banner_topor_jpg.text ()
    | Banner_simone_jpg => Banner_simone_jpg.text ()
    | Banner_rtos_jpg => Banner_rtos_jpg.text ()
    | Logo_simone_png => Logo_simone_png.text ()
    | Logo_topor_png => Logo_topor_png.text ()
    | Nivo_loading_gif => Nivo_loading_gif.text ()
    | Nivo_bullets_png => Nivo_bullets_png.text ()
    | Nivo_arrows_png => Nivo_arrows_png.text ()
val urls =
     Banner1_png.geturl :: 
     Banner2_png.geturl :: 
     Walle_jpg.geturl :: 
     Nemo_jpg.geturl :: 
     Pnp_png.geturl :: 
     Flex_png.geturl :: 
     Pencil_drawing_png.geturl :: 
     Bluegreen_jpg.geturl :: 
     Logo_gif.geturl :: 
     Flag_uk_gif.geturl :: 
     Flag_ru_gif.geturl :: 
     Flag_jp_gif.geturl :: 
     Whytopor2_gif.geturl :: 
     Whytopor4_gif.geturl :: 
     Whytopor1_gif.geturl :: 
     Whytopor3_gif.geturl :: 
     Logo_rtos_png.geturl :: 
     Whyrtos4_jpg.geturl :: 
     Whyrtos1_jpg.geturl :: 
     Whyrtos2_jpg.geturl :: 
     Whyrtos5_jpg.geturl :: 
     Whyrtos3_jpg.geturl :: 
     Banner_topor_jpg.geturl :: 
     Banner_simone_jpg.geturl :: 
     Banner_rtos_jpg.geturl :: 
     Logo_simone_png.geturl :: 
     Logo_topor_png.geturl :: 
     Nivo_loading_gif.geturl :: 
     Nivo_bullets_png.geturl :: 
     Nivo_arrows_png.geturl :: 
       []
