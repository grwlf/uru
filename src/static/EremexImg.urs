datatype content = Logo_gif | Whytopor2_gif | Whytopor4_gif | Whytopor1_gif | Whytopor3_gif | Logo_rtos_png | Banner_topor_jpg | Banner_simone_jpg | Banner_rtos_jpg | Logo_simone_png | Logo_topor_png
val binary : content -> transaction blob
val text : content -> transaction string
val blobpage : content -> transaction page
val urls : list url
