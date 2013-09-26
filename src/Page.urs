
con dpage = fn deps => [ Hdr = record deps, Bdy = transaction page]

val bdy : t ::: {Type} -> transaction page -> record (dpage t) -> (record (dpage t))

val addScript : t1 ::: {Type}
  -> n :: Name
  -> url
  -> [t1 ~ [n]] => record (dpage t1)
  -> record (dpage (t1 ++ [n = url]))

val requireScript : t1 ::: {Type}
  -> n :: Name
  -> [t1 ~ [n]] => record (dpage (t1++[n=url]))
  -> record (dpage (t1++[n=url]))

val runPage : t1 ::: {Type} -> t2 ::: {Type}
  -> folder t2
  -> (record (map Urllike.urllike t2))
  -> record (dpage t1)
  -> (record (dpage t1) -> record (dpage t2))
  -> transaction page

