datatype content = Walle_jpg | Nemo_jpg | Pnp_png | Flex_png | Pencil_drawing_png | Bluegreen_jpg | Logo_gif | Banner_topor_jpg | Banner_simone_jpg | Banner_rtos_jpg | Logo_simone_png | Logo_topor_png | Logo_rtos_png | Nivo_loading_gif | Nivo_bullets_png | Nivo_arrows_png
val binary : content -> transaction blob
val text : content -> transaction string
val blobpage : content -> transaction page
val urls : list url
