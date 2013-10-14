
type cell = {Content : xbody}

val mkcell : xbody -> cell

val cells : css_class -> list cell -> transaction xbody

