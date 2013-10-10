datatype content = Jquery_1_9_1_js | Jquery_ui_js | PikaChoose_js | Jquery_pikachoose_min_js | Jquery_jcarousel_min_js | Jquery_nivo_slider_pack_js | NivoSlider_js | Jquery_megamenu_js | MegaMenu2_js | TinyMCE_js | RespTabs_js | EasyResponsiveTabs_js | Menu_jq_js
val binary : content -> transaction blob
val text : content -> transaction string
val blobpage : content -> transaction page
val urls : list url
