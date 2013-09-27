
con dpage = fn deps => [ Hdr = record deps, Bdy = transaction page]

con transformer = fn t => record (dpage t) -> record (dpage t)

val withBody : t ::: {Type} -> transaction page -> (record (dpage t) -> (record (dpage t)))

(* val withHeader : x ::: {Type} -> t ::: {Type} -> record t -> (record (dpage x) -> record (dpage t)) *)

val addHeader : t1 ::: {Type} -> n :: Name -> [t1 ~ [n]]
  => xhead
  -> record (dpage t1)
  -> record (dpage (t1 ++ [n = xhead]))

val addScript : t1 ::: {Type} -> n :: Name -> [t1 ~ [n]]
  => url
  -> record (dpage t1)
  -> record (dpage (t1 ++ [n = xhead]))

val requireHeader : t1 ::: {Type}
  -> n :: Name
  -> [t1 ~ [n]] => record (dpage (t1++[n=xhead]))
  -> record (dpage (t1++[n=xhead]))

val runPage : t2 ::: {Type}
  -> folder t2
  -> (record (map Xmllike.xmllike t2))
  -> (record (dpage []) -> record (dpage t2))
  -> transaction page

val javaScript : url -> xhead

val addHeaders : t ::: {Type} -> x ::: {Type} -> r ::: {Type}
  -> (record t)
  -> (record (dpage t) -> record (dpage r))
  -> (record (dpage x) -> record (dpage r))

