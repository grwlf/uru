
val css = CSS.css

val cs = ("text-align", CSS.Str "left") ::
         []

val box = ("overflow",CSS.Str "hidden") ::
          ("display",CSS.Str "inline-block") ::
          ("width",CSS.Str "250px") ::
          ("vertical-align",CSS.Str "top") ::
          []

val s1 = ("padding-right",CSS.Str "20px") ::
         box

val s2 = box

val s3 = box

val cols = { TC_Col1 = css(s1), TC_Col2 = css(s2), TC_Col3 = css(s3) }

fun add [t] [t2]
  (f:((columns -> transaction xbody) -> transaction xbody) -> record (dpage t) -> record (dpage t2))
  (r:record (dpage t))
    : record (dpage t2) =
  f (fn tx => x <- tx cols ; return <xml><div style={css(cs)}>{x}</div></xml> ) r

