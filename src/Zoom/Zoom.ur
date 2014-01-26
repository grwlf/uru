con need = [JQ=unit]
con out = need ++ [ZOOM=unit]

style zoom

fun mkzoom (x : xbody) : transaction xbody = 
  i <- fresh;
  return
    <xml>
      <span class={zoom} id={i}>
        {x}
        <active code={Zoom_js.zoom_on i "grab"; return <xml/>}/>
      </span>
    </xml>


fun add [t] [x] [t~out] f r = 
  let
    val h = <xml>
              {Script.insert Uru.javascript Jquery_zoom_min_js.geturl}
              {Script.insert Uru.javascript Zoom_js.geturl}
              <link rel="stylesheet" href={Zoom_css.geturl}/>
            </xml>

  in
    f ( Uru.addHeader h (
        Uru.addTag [#ZOOM] {} (
        r)))
  end

