
con dpage = fn deps => [
  Hdr = xhead,
  Marks = record deps,
  Bdy = transaction xbody,
  Bdy_onload = transaction unit]

val javascript : mimeType

val withBody : t ::: {Type}
  -> transaction xbody
  -> (record (dpage t) -> (record (dpage t)))

val addHeader : t1 ::: {Type}
  -> xhead
  -> record (dpage t1)
  -> (record (dpage t1))

val addMark : t1 ::: {Type} -> n :: Name -> [t1 ~ [n={}]]
  => record (dpage t1)
  -> (record (dpage (t1 ++ [n={}])))

val addOnLoad : t1 ::: {Type}
  -> transaction unit
  -> record (dpage t1)
  -> (record (dpage t1))

val run : t2 ::: {Type}
  -> (record (dpage []) -> (record (dpage t2)))
  -> transaction page

