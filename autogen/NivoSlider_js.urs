val binary : unit -> transaction blob
val text : unit -> transaction string
val blobpage : unit -> transaction page
val geturl : url
val nivo_init : css_class -> css_class -> css_class -> url -> url -> url -> transaction unit
val propagated_urls : list url
