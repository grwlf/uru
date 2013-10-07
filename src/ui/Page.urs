
con dpage = fn deps => [
  Hdr = xhead,
  Marks = record deps,
  Bdy = transaction xbody,
  Bdy_onload = transaction unit]

val withBody : t ::: {Type} -> transaction xbody -> (record (dpage t) -> (record (dpage t)))

val withHeader : t ::: {Type} -> t2 ::: {Type} -> n :: Name -> [t~[n={}]]
  => xhead
  -> (record (dpage (t++[n={}])) -> record (dpage t2))
  -> record (dpage t)
  -> record (dpage t2)

val javascript : mimeType

val addHeader : t1 ::: {Type} -> n :: Name -> [t1 ~ [n={}]]
  => xhead
  -> (transaction unit)
  -> record (dpage t1)
  -> record (dpage (t1 ++ [n={}]))

val requireHeader : t1 ::: {Type} -> n :: Name -> [t1 ~ [n={}]]
  => record (dpage (t1++[n={}]))
  -> record (dpage (t1++[n={}]))

val runPage : t2 ::: {Type}
  -> (record (dpage []) -> record (dpage t2))
  -> transaction page

