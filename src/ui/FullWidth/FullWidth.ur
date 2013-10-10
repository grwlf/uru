
val css = CSS.css

fun colorize (w:int) (clr:string) (x:xbody) : xbody =
  let
    val inner = ("margin", CSS.Str "0 auto") ::
                ("width", CSS.Str ((show w) ^ "px")) ::
                []

    fun outer clr = ("width", CSS.Str "100%") :: 
                    ("background-color", CSS.Str clr) ::
                    []
  in
    <xml>
      <div style={css (outer clr)}>
        <div style={css inner}>
        {x}
        </div>
      </div>
    </xml>
  end
  

fun horsect w (l:list (color * xbody)) = 
  List.foldr (fn (clr,x) s => <xml>{colorize w clr x}{s}</xml>) <xml/> l


fun margin m x =
  let
    val marg = ("margin", CSS.Str m) ::
               []
  in
    <xml><div style={css marg}>{x}</div></xml>
  end

