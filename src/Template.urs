
type cell = {Content : xbody}

val mkcell : xbody -> cell

val cellsBy3 : css_class -> list cell -> transaction xbody
val cellsBy4 : css_class -> list cell -> transaction xbody
val cellsBy1 : css_class -> list cell -> transaction xbody

(* type crumb = { Url : url , Caption : string } *)
type crumb = {  Caption : string }

type lang = { Lang : string }

type handlers = {
  Product: lang -> Product.product -> url,
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
val addcrumb : url -> string -> settings -> settings
(* val setlang : lang -> settings -> settings *)
val setmain : settings -> settings

val template : handlers -> settings -> (RespTabs.tabs -> transaction xbody) -> transaction page

style designnote
style box
