val binary : unit -> transaction blob
val text : unit -> transaction string
val blobpage : unit -> transaction page
val geturl : url
val pkch_init : css_class -> transaction unit
val pkch_style : int -> int -> transaction unit
val propagated_urls : list url
