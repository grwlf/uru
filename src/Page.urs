

con dpage = fn deps => [ Hdr = record deps, Bdy = transaction page]

val bdy : t ::: {Type} -> transaction page -> record (dpage t) -> (record (dpage t))

val runPage : t1 ::: {Type} -> t2 ::: {Type}
  -> folder t2
  -> (record (map Urllike.urllike t2))
  -> record (dpage t1)
  -> (record (dpage t1) -> record (dpage t2))
  -> transaction page
