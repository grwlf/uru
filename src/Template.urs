
type cell = {Content : xbody}

val mkcell : xbody -> cell

val cellsBy3 : css_class -> list cell -> transaction xbody
val cellsBy4 : css_class -> list cell -> transaction xbody
val cellsBy1 : css_class -> list cell -> transaction xbody

type crumb = { Url : url , Caption : string }

val mkcrumb : url -> string -> crumb
val mkcrumb2 : transaction page -> string -> crumb

type settings = {
  Product: string -> string -> transaction page,
  Self : url,
  Main : url,
  IsMain : bool
  }

val template : settings -> list crumb -> (RespTabs.tabs -> transaction xbody) -> transaction page

style designnote
style box
