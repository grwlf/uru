datatype content = Jquery_1_9_1_js | Jquery_ui_js | PikaChoose_js | Jquery_pikachoose_min_js | Jquery_jcarousel_min_js | Jquery_nivo_slider_pack_js | NivoSlider_js | Jquery_megamenu_js | MegaMenu2_js | TinyMCE_js | RespTabs_js | EasyResponsiveTabs_js | Menu_jq_js
fun binary c = case c of
      Jquery_1_9_1_js => Jquery_1_9_1_js.binary ()
    | Jquery_ui_js => Jquery_ui_js.binary ()
    | PikaChoose_js => PikaChoose_js.binary ()
    | Jquery_pikachoose_min_js => Jquery_pikachoose_min_js.binary ()
    | Jquery_jcarousel_min_js => Jquery_jcarousel_min_js.binary ()
    | Jquery_nivo_slider_pack_js => Jquery_nivo_slider_pack_js.binary ()
    | NivoSlider_js => NivoSlider_js.binary ()
    | Jquery_megamenu_js => Jquery_megamenu_js.binary ()
    | MegaMenu2_js => MegaMenu2_js.binary ()
    | TinyMCE_js => TinyMCE_js.binary ()
    | RespTabs_js => RespTabs_js.binary ()
    | EasyResponsiveTabs_js => EasyResponsiveTabs_js.binary ()
    | Menu_jq_js => Menu_jq_js.binary ()
fun blobpage c = case c of
      Jquery_1_9_1_js => Jquery_1_9_1_js.blobpage ()
    | Jquery_ui_js => Jquery_ui_js.blobpage ()
    | PikaChoose_js => PikaChoose_js.blobpage ()
    | Jquery_pikachoose_min_js => Jquery_pikachoose_min_js.blobpage ()
    | Jquery_jcarousel_min_js => Jquery_jcarousel_min_js.blobpage ()
    | Jquery_nivo_slider_pack_js => Jquery_nivo_slider_pack_js.blobpage ()
    | NivoSlider_js => NivoSlider_js.blobpage ()
    | Jquery_megamenu_js => Jquery_megamenu_js.blobpage ()
    | MegaMenu2_js => MegaMenu2_js.blobpage ()
    | TinyMCE_js => TinyMCE_js.blobpage ()
    | RespTabs_js => RespTabs_js.blobpage ()
    | EasyResponsiveTabs_js => EasyResponsiveTabs_js.blobpage ()
    | Menu_jq_js => Menu_jq_js.blobpage ()
fun text c = case c of
      Jquery_1_9_1_js => Jquery_1_9_1_js.text ()
    | Jquery_ui_js => Jquery_ui_js.text ()
    | PikaChoose_js => PikaChoose_js.text ()
    | Jquery_pikachoose_min_js => Jquery_pikachoose_min_js.text ()
    | Jquery_jcarousel_min_js => Jquery_jcarousel_min_js.text ()
    | Jquery_nivo_slider_pack_js => Jquery_nivo_slider_pack_js.text ()
    | NivoSlider_js => NivoSlider_js.text ()
    | Jquery_megamenu_js => Jquery_megamenu_js.text ()
    | MegaMenu2_js => MegaMenu2_js.text ()
    | TinyMCE_js => TinyMCE_js.text ()
    | RespTabs_js => RespTabs_js.text ()
    | EasyResponsiveTabs_js => EasyResponsiveTabs_js.text ()
    | Menu_jq_js => Menu_jq_js.text ()
val urls =
     Jquery_1_9_1_js.geturl :: 
     Jquery_ui_js.geturl :: 
     PikaChoose_js.geturl :: 
     Jquery_pikachoose_min_js.geturl :: 
     Jquery_jcarousel_min_js.geturl :: 
     Jquery_nivo_slider_pack_js.geturl :: 
     NivoSlider_js.geturl :: 
     Jquery_megamenu_js.geturl :: 
     MegaMenu2_js.geturl :: 
     TinyMCE_js.geturl :: 
     RespTabs_js.geturl :: 
     EasyResponsiveTabs_js.geturl :: 
     Menu_jq_js.geturl :: 
       []
