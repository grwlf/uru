
type cell = {Content : xbody}

val mkcell : xbody -> cell

val cellsBy3 : css_class -> list cell -> transaction xbody
val cellsBy4 : css_class -> list cell -> transaction xbody
val cellsBy1 : css_class -> list cell -> transaction xbody

type crumb = { Url : url , Caption : string }

type language = { Lang : string }

type handlers = {
  Product: string -> string -> transaction page,
  Self : url,
  Main : url
  }

type settings = {
  Crumbs : list crumb,
  IsMain : bool
}


val mkcrumb : url -> string -> crumb


val defaultSettings : settings
val addcrumb : transaction page -> string -> settings -> settings

val template : handlers -> settings -> (RespTabs.tabs -> transaction xbody) -> transaction page

style designnote
style box
