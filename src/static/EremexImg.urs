datatype content = Logo_gif | Flag_uk_gif | Flag_ru_gif | Flag_jp_gif | Whytopor2_gif | Whytopor4_gif | Whytopor1_gif | Whytopor3_gif | Logo_rtos_png | Whyrtos4_jpg | Whyrtos1_jpg | Whyrtos2_jpg | Whyrtos5_jpg | Whyrtos3_jpg | Banner_topor_jpg | Banner_simone_jpg | Banner_rtos_jpg | Logo_simone_png | Logo_topor_png
val binary : content -> transaction blob
val text : content -> transaction string
val blobpage : content -> transaction page
val urls : list url
