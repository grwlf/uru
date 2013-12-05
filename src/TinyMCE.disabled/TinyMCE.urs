
con dpage = Page.dpage

(* Continuation passing style *)

con need = [JQ={}]
con out = need ++ [TMCE={}]


val add : t ::: {Type} -> x ::: {Type} -> [t ~ out]
  => css_class
  -> list url
  -> (record (dpage (t ++ out)) -> record (dpage x))
  -> record (dpage (t ++ need))
  -> record (dpage x)
