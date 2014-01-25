con dpage = Uru.dpage

con need = [JQ={}]
con out = need ++ [PKCH={}]

val add : t ::: {Type} -> x ::: Type -> [t ~ out]
  => css_class
  -> (record (dpage (t ++ out)) -> x)
  -> record (dpage (t ++ need)) -> x
