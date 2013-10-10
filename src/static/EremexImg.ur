datatype content = Logo_gif | Flag_uk_gif | Flag_ru_gif | Flag_jp_gif | Whytopor2_gif | Whytopor4_gif | Whytopor1_gif | Whytopor3_gif | Logo_rtos_png | Banner_topor_jpg | Banner_simone_jpg | Banner_rtos_jpg | Logo_simone_png | Logo_topor_png
fun binary c = case c of
      Logo_gif => Logo_gif.binary ()
    | Flag_uk_gif => Flag_uk_gif.binary ()
    | Flag_ru_gif => Flag_ru_gif.binary ()
    | Flag_jp_gif => Flag_jp_gif.binary ()
    | Whytopor2_gif => Whytopor2_gif.binary ()
    | Whytopor4_gif => Whytopor4_gif.binary ()
    | Whytopor1_gif => Whytopor1_gif.binary ()
    | Whytopor3_gif => Whytopor3_gif.binary ()
    | Logo_rtos_png => Logo_rtos_png.binary ()
    | Banner_topor_jpg => Banner_topor_jpg.binary ()
    | Banner_simone_jpg => Banner_simone_jpg.binary ()
    | Banner_rtos_jpg => Banner_rtos_jpg.binary ()
    | Logo_simone_png => Logo_simone_png.binary ()
    | Logo_topor_png => Logo_topor_png.binary ()
fun blobpage c = case c of
      Logo_gif => Logo_gif.blobpage ()
    | Flag_uk_gif => Flag_uk_gif.blobpage ()
    | Flag_ru_gif => Flag_ru_gif.blobpage ()
    | Flag_jp_gif => Flag_jp_gif.blobpage ()
    | Whytopor2_gif => Whytopor2_gif.blobpage ()
    | Whytopor4_gif => Whytopor4_gif.blobpage ()
    | Whytopor1_gif => Whytopor1_gif.blobpage ()
    | Whytopor3_gif => Whytopor3_gif.blobpage ()
    | Logo_rtos_png => Logo_rtos_png.blobpage ()
    | Banner_topor_jpg => Banner_topor_jpg.blobpage ()
    | Banner_simone_jpg => Banner_simone_jpg.blobpage ()
    | Banner_rtos_jpg => Banner_rtos_jpg.blobpage ()
    | Logo_simone_png => Logo_simone_png.blobpage ()
    | Logo_topor_png => Logo_topor_png.blobpage ()
fun text c = case c of
      Logo_gif => Logo_gif.text ()
    | Flag_uk_gif => Flag_uk_gif.text ()
    | Flag_ru_gif => Flag_ru_gif.text ()
    | Flag_jp_gif => Flag_jp_gif.text ()
    | Whytopor2_gif => Whytopor2_gif.text ()
    | Whytopor4_gif => Whytopor4_gif.text ()
    | Whytopor1_gif => Whytopor1_gif.text ()
    | Whytopor3_gif => Whytopor3_gif.text ()
    | Logo_rtos_png => Logo_rtos_png.text ()
    | Banner_topor_jpg => Banner_topor_jpg.text ()
    | Banner_simone_jpg => Banner_simone_jpg.text ()
    | Banner_rtos_jpg => Banner_rtos_jpg.text ()
    | Logo_simone_png => Logo_simone_png.text ()
    | Logo_topor_png => Logo_topor_png.text ()
val urls =
     Logo_gif.geturl :: 
     Flag_uk_gif.geturl :: 
     Flag_ru_gif.geturl :: 
     Flag_jp_gif.geturl :: 
     Whytopor2_gif.geturl :: 
     Whytopor4_gif.geturl :: 
     Whytopor1_gif.geturl :: 
     Whytopor3_gif.geturl :: 
     Logo_rtos_png.geturl :: 
     Banner_topor_jpg.geturl :: 
     Banner_simone_jpg.geturl :: 
     Banner_rtos_jpg.geturl :: 
     Logo_simone_png.geturl :: 
     Logo_topor_png.geturl :: 
       []
