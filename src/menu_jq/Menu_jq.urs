
con dpage = Page.dpage

(* Continuation passing style *)

con req = [JQ=xhead, JQ_UI=xhead, JQM=xhead]

val add : t ::: {Type} -> x ::: {Type} -> [t ~ [JQ,JQ_UI,JQM]]
  => ((css_class -> transaction unit) -> record (dpage (t ++ req)) -> record (dpage x))
  -> record (dpage (t ++ [JQ = xhead, JQ_UI=xhead]))
  -> record (dpage x)
