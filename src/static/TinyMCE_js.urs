val binary : unit -> transaction blob
val text : unit -> transaction string
val blobpage : unit -> transaction page
val geturl : url
type tmce_imglist
val imglist_new : unit -> transaction tmce_imglist
val imglist_insert : string -> url -> tmce_imglist -> transaction tmce_imglist
val tmce_init : css_class -> tmce_imglist -> transaction unit
