datatype content = AppMM_css | Jquery_ui_css | PikaChoose_css | Nivo_default_css | Nivo_slider_css | MegaMenu2_css | Menu_jq_css
fun binary c = case c of
      AppMM_css => AppMM_css.binary ()
    | Jquery_ui_css => Jquery_ui_css.binary ()
    | PikaChoose_css => PikaChoose_css.binary ()
    | Nivo_default_css => Nivo_default_css.binary ()
    | Nivo_slider_css => Nivo_slider_css.binary ()
    | MegaMenu2_css => MegaMenu2_css.binary ()
    | Menu_jq_css => Menu_jq_css.binary ()
fun blobpage c = case c of
      AppMM_css => AppMM_css.blobpage ()
    | Jquery_ui_css => Jquery_ui_css.blobpage ()
    | PikaChoose_css => PikaChoose_css.blobpage ()
    | Nivo_default_css => Nivo_default_css.blobpage ()
    | Nivo_slider_css => Nivo_slider_css.blobpage ()
    | MegaMenu2_css => MegaMenu2_css.blobpage ()
    | Menu_jq_css => Menu_jq_css.blobpage ()
fun text c = case c of
      AppMM_css => AppMM_css.text ()
    | Jquery_ui_css => Jquery_ui_css.text ()
    | PikaChoose_css => PikaChoose_css.text ()
    | Nivo_default_css => Nivo_default_css.text ()
    | Nivo_slider_css => Nivo_slider_css.text ()
    | MegaMenu2_css => MegaMenu2_css.text ()
    | Menu_jq_css => Menu_jq_css.text ()
val urls =
     AppMM_css.geturl :: 
     Jquery_ui_css.geturl :: 
     PikaChoose_css.geturl :: 
     Nivo_default_css.geturl :: 
     Nivo_slider_css.geturl :: 
     MegaMenu2_css.geturl :: 
     Menu_jq_css.geturl :: 
       []
