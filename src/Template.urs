
type cell = {Content : xbody}

val mkcell : xbody -> cell

val cellsBy3 : css_class -> list cell -> transaction xbody
val cellsBy4 : css_class -> list cell -> transaction xbody
val cellsBy1 : css_class -> list cell -> transaction xbody

type crumb = { Url : url , Caption : string }

type lang = { Lang : string }

type handlers = {
  Product: string -> string -> lang -> transaction page,
  Self : lang -> url,
  Main : lang -> url
  }

type settings = {
  Crumbs : list crumb,
  IsMain : bool,
  Lang : lang
}


val mkcrumb : url -> string -> crumb


val defaultSettings : settings
val addcrumb : transaction page -> string -> settings -> settings
val setlang : lang -> settings -> settings
val setmain : settings -> settings

val template : handlers -> settings -> (RespTabs.tabs -> transaction xbody) -> transaction page

style designnote
style box
