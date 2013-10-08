
type dpage = Page.dpage

type settings = { Width : int }

con inp = [FW=settings]

(* type fullwidth = string -> xbody -> xbody *)

type cssfw = { Full : string -> css_style , Page : css_style }

val add : t ::: {Type} -> t2 ::: {Type} -> [t~inp]
  => (cssfw -> record (dpage (t++inp)) -> record (dpage t2))
  -> (record (dpage (t++inp)))
  -> record (dpage t2)

val embed : cssfw -> string -> xbody -> xbody
