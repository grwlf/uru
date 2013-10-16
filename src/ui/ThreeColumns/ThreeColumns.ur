
val css = CSS.css

val brd1 = ("border",CSS.Str "4px double black")
val brd2 = ("border",CSS.Str "1px dotted black")

val cs = ("text-align", CSS.Str "left") ::
         []

fun box w = ("overflow",CSS.Str "hidden") ::
            ("display",CSS.Str "inline-block") ::
            ("width",CSS.Str w) ::
            ("vertical-align",CSS.Str "top") ::
            ("padding-left",CSS.Str "20px") ::
            ("-webkit-box-sizing",CSS.Str "border-box") ::
            ("-moz-box-sizing",CSS.Str "border-box") ::
            ("box-sizing",CSS.Str "border-box") ::
            []

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


fun cells (tl:transaction (list cell)) : transaction xbody =
  let
    val cs = ("text-align", CSS.Str "left") ::
             []

    fun box w = ("overflow",CSS.Str "hidden") ::
                ("display",CSS.Str "inline-block") ::
                ("min-width",CSS.Str w) ::
                ("vertical-align",CSS.Str "top") ::
                ("padding-left",CSS.Str "20px") ::
                ("-webkit-box-sizing",CSS.Str "border-box") ::
                ("-moz-box-sizing",CSS.Str "border-box") ::
                ("box-sizing",CSS.Str "border-box") ::
                []

    val b = box "25%"

    fun boxes l : xbody = List.mapX (fn x => <xml><div style={css b}>{x.Content}</div></xml>) l
  in
  l <- tl;
  return
    <xml>
      <div style={css cs}>
        {boxes l}
      </div>
    </xml>
  end

fun mkcell (x:xbody) = { Content = x }

