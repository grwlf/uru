
con dpage = Page.dpage

(* Continuation passing style *)

con need = [JQ=xhead, JQ_UI=xhead]
con out = need ++ [JQM=xhead]

val add : t ::: {Type} -> x ::: {Type} -> [t ~ out]
  => ((css_class -> transaction unit) -> record (dpage (t ++ out)) -> record (dpage x))
  -> record (dpage (t ++ need))
  -> record (dpage x)
