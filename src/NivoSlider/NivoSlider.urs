con dpage = Uru.dpage

con need = [JQ={}]
con out = need ++ [NIVO={}]

type slide = {Url:url, Title:option xbody}

con slides = list slide -> transaction xbody

val add : t ::: {Type} -> x ::: Type -> [t ~ out]
  => css_class
  -> (slides -> record (dpage (t ++ out)) -> x)
  -> record (dpage (t ++ need)) -> x
