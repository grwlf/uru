
val css = CSS.css

fun mkcell (x:xbody) : cell = { Content = x }

fun cells (c:css_class) (l:list cell) : transaction xbody =
  let
    val cs = ("text-align", CSS.Str "left") ::
             []
    val boxes : xbody = List.mapX (fn x => <xml><div class={c}>{x.Content}</div></xml>) l
  in
  return
    <xml>
      <div style={css cs}>
        {boxes}
      </div>
    </xml>
  end
