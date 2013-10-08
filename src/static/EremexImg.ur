datatype content = Logo_gif | Banner_topor_jpg | Banner_simone_jpg | Banner_rtos_jpg | Logo_simone_png | Logo_topor_png | Logo_rtos_png
fun binary c = case c of
      Logo_gif => Logo_gif.binary ()
    | Banner_topor_jpg => Banner_topor_jpg.binary ()
    | Banner_simone_jpg => Banner_simone_jpg.binary ()
    | Banner_rtos_jpg => Banner_rtos_jpg.binary ()
    | Logo_simone_png => Logo_simone_png.binary ()
    | Logo_topor_png => Logo_topor_png.binary ()
    | Logo_rtos_png => Logo_rtos_png.binary ()
fun blobpage c = case c of
      Logo_gif => Logo_gif.blobpage ()
    | Banner_topor_jpg => Banner_topor_jpg.blobpage ()
    | Banner_simone_jpg => Banner_simone_jpg.blobpage ()
    | Banner_rtos_jpg => Banner_rtos_jpg.blobpage ()
    | Logo_simone_png => Logo_simone_png.blobpage ()
    | Logo_topor_png => Logo_topor_png.blobpage ()
    | Logo_rtos_png => Logo_rtos_png.blobpage ()
fun text c = case c of
      Logo_gif => Logo_gif.text ()
    | Banner_topor_jpg => Banner_topor_jpg.text ()
    | Banner_simone_jpg => Banner_simone_jpg.text ()
    | Banner_rtos_jpg => Banner_rtos_jpg.text ()
    | Logo_simone_png => Logo_simone_png.text ()
    | Logo_topor_png => Logo_topor_png.text ()
    | Logo_rtos_png => Logo_rtos_png.text ()
val urls =
     Logo_gif.geturl :: 
     Banner_topor_jpg.geturl :: 
     Banner_simone_jpg.geturl :: 
     Banner_rtos_jpg.geturl :: 
     Logo_simone_png.geturl :: 
     Logo_topor_png.geturl :: 
     Logo_rtos_png.geturl :: 
       []
