datatype content = AppMM_css | Jquery_ui_css | Bootstrap_css | PikaChoose_css | Nivo_default_css | Nivo_slider_css | MegaMenu2_css | Easy_responsive_tabs_css | Menu_jq_css
val binary : content -> transaction blob
val text : content -> transaction string
val blobpage : content -> transaction page
val urls : list url
