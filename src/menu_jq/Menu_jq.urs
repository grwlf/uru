
con dpage = Page.dpage

(* con my :: {Type} -> Type *)

val add : t ::: {Type}
  -> css_class
  -> [t ~ [JQ]] => record (dpage (t ++ [JQ = url]))
  -> record (dpage (t ++ [JQ = url]))

