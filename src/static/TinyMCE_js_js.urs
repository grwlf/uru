type tmce_imglist
val imglist_new : unit -> transaction tmce_imglist
val imglist_insert : string -> url -> tmce_imglist -> transaction tmce_imglist
val tmce_init : css_class -> tmce_imglist -> transaction unit
