
con dpage = Page.dpage
con need = [JQ=xhead]
con out = need ++ [JQ_MM=xhead]

val add : t ::: {Type} -> x ::: {Type} -> [t ~ out]
  => ((css_class -> transaction unit) -> record (dpage (t ++ out)) -> record (dpage x))
  -> record (dpage (t ++ need))
  -> record (dpage x)
