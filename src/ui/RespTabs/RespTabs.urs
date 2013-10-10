
con dpage = Page.dpage
con need = [JQ=unit]
con out = need ++ [RESPT=unit]

type tab = {Caption:xbody, Content:xbody}

con tabs = list tab -> transaction xbody

val add : t ::: {Type} -> x ::: {Type} -> [t ~ out]
  => (tabs -> record (dpage (t ++ out)) -> record (dpage x))
  -> record (dpage (t ++ need))
  -> record (dpage x)
