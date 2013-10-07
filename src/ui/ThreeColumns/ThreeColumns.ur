

fun mkcss (n:string) (v:string) (s:css_style) : css_style = oneProperty s (value (property n) (atom v))

fun css (l : list (string * string)) : css_style = 
  List.foldr (fn (n,v) s => mkcss n v s) noStyle l

val cs = ("text-align","left") ::
         []


val box = ("overflow","hidden") ::
          ("display","inline-block") ::
          ("width","250px") ::
          ("vertical-align","top") ::
          []

val s1 = ("padding-right","20px") ::
         box

val s2 = box

val s3 = box

val cols = { TC_Col1 = css(s1), TC_Col2 = css(s2), TC_Col3 = css(s3) }

fun add [t]
  (f:((columns -> transaction xbody) -> transaction xbody) -> record (dpage t) -> record (dpage t))
  (r:record (dpage t))
    : record (dpage t) =
  f (fn tx => x <- tx cols ; return <xml><div style={css(cs)}>{x}</div></xml> ) r

