
type settings = { Width : int }

con inp = [FW=settings]

val css = CSS.css

fun add [t] [t2] [t~inp]
  (f : fullwidth -> record (dpage (t++inp)) -> record (dpage t2))
  (r : record (dpage (t++inp)))
     : record (dpage t2) =
  let 

    val w = (Page.getSettings [#FW] r).Width

    fun fullw (clr:string) (x:xbody) : xbody =
      let
        val fullwidth = ("width", CSS.Str "100%") :: 
                        ("background-color", CSS.Str clr) ::
                        []

        val workwidth = ("margin", CSS.Str "0 auto") ::
                        ("width", CSS.Str ((show w) ^ "px")) ::
                        []
      in
        <xml>
          <div style={css fullwidth}>
            <div style={css workwidth}>
              {x}
            </div>
          </div>
        </xml>
      end

  in
    f fullw r
  end
