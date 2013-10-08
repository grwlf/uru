
type dpage = Page.dpage

type settings = { Width : int }

con inp = [FW=settings]

type fullwidth = string -> xbody -> xbody

val add : t ::: {Type} -> t2 ::: {Type} -> [t~inp]
  => (fullwidth -> record (dpage (t++inp)) -> record (dpage t2))
  -> (record (dpage (t++inp)))
  -> record (dpage t2)
