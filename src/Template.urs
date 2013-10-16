
type cell = {Content : xbody}

val mkcell : xbody -> cell

val cellsBy3 : css_class -> list cell -> transaction xbody
val cellsBy4 : css_class -> list cell -> transaction xbody
val cellsBy1 : css_class -> list cell -> transaction xbody

type settings = {
  Self : url,
  Main : url,
  IsMain : bool
  }

val template : settings -> (RespTabs.tabs -> transaction xbody) -> transaction page
