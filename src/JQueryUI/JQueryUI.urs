con dpage = Uru.dpage
con need = [JQ=unit]
con out = need ++ [JQ_UI=unit]

val add : t ::: {Type} -> x ::: Type -> [t ~ out]
  => (record (dpage (t ++ out)) -> x)
  -> record (dpage (t ++ need)) -> x

