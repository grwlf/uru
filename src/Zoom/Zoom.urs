

con dpage = Uru.dpage
con need = [JQ=unit]
con out = need ++ [ZOOM=unit]

val add : t ::: {Type} -> x ::: Type -> [t ~ out]
  => (record (dpage (t ++ out)) -> x)
  -> record (dpage (t ++ need)) -> x


val mkzoom : xbody -> transaction xbody
