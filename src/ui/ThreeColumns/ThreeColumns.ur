
val css = CSS.css

val brd1 = ("border",CSS.Str "4px double black")
val brd2 = ("border",CSS.Str "1px dotted black")

val cs = ("text-align", CSS.Str "left") ::
         []

val box w = ("overflow",CSS.Str "hidden") ::
            ("display",CSS.Str "inline-block") ::
            ("width",CSS.Str w) ::
            ("vertical-align",CSS.Str "top") ::
            []

(* val cols = { TC_Col1 = css(s1), TC_Col2 = css(s2), TC_Col3 = css(s3) } *)
(* fun add [t] [t2] *)
(*   (f:((columns -> transaction xbody) -> transaction xbody) -> record (dpage t) -> record (dpage t2)) *)
(*   (r:record (dpage t)) *)
(*     : record (dpage t2) = *)
(*   f (fn tx => x <- tx cols ; return <xml><div style={css(cs)}>{x}</div></xml> ) r *)

fun threecols tc1 tc2 tc3 =
  let
    val s1 = box "32%"

    val s2 = box "32%"

    val s3 = box "32%"
  in
  c1 <- tc1;
  c2 <- tc2;
  c3 <- tc3;
  return
    <xml>
      <div style={css cs}>
        <div style={css s1}> {c1} </div>
        <div style={css s2}> {c2} </div>
        <div style={css s3}> {c3} </div>
      </div>
    </xml>
  end

fun twocols tc1 tc2 =
  let 
    val s1 = box "49%"
    val s2 = 
      ("text-align", CSS.Str "right") ::
      box "49%"

  in
  c1 <- tc1;
  c2 <- tc2;
  return <xml>
      <div style={css cs}>
        <div style={css s1}> {c1} </div>
        <div style={css s2}> {c2} </div>
      </div>
    </xml>
  end
