
type dpage = Page.dpage
type columns = { TC_Col1 : css_style, TC_Col2 : css_style, TC_Col3 : css_style }

val add : t ::: {Type}
  -> (((columns -> transaction xbody) -> transaction xbody) -> record (dpage t) -> record (dpage t))
  -> (record (dpage t))
  -> record (dpage t)
