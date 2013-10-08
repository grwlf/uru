
type settings = { Width : int }

con inp = [FW=settings]

val css = CSS.css

fun add [t] [t2] [t~inp]
  (f : cssfw -> record (dpage (t++inp)) -> record (dpage t2))
  (r : record (dpage (t++inp)))
     : record (dpage t2) =
  let 

    val w = (Page.getSettings [#FW] r).Width

    fun fullwidth clr = css(("width", CSS.Str "100%") :: 
                        ("background-color", CSS.Str clr) ::
                        [])

    val workwidth = ("margin", CSS.Str "0 auto") ::
                    ("width", CSS.Str ((show w) ^ "px")) ::
                    []

  in
    f {Full = (fn x => fullwidth x), Page = css workwidth } r
  end

fun embed (fw:cssfw) (s:string) (x:xbody) : xbody =
  <xml>
    <div style={fw.Full s}>
      <div style={fw.Page}>
      {x}
      </div>
    </div>
  </xml>
  
