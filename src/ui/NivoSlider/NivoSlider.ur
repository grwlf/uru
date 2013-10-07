
con need = [JQ={}]
con out = need ++ [NIVO={}]

style nivocls
style nivoribbon

fun mkslide (r:slide) =
  case r.Title of
    Some t =>
      i <- fresh;
      return (
        <xml> <img src={r.Url} alt="" title={"#"^(show i)}/> </xml>,
        <xml><div id={i}>{t}</div></xml>
      )
    | None =>
      return (
        <xml> <img src={r.Url} alt="" title=""/> </xml>,
        <xml/>
      )


fun add [t] [x] [t~out] css f r = 
  let
    val hdr = <xml>
                <link rel="stylesheet" href={Nivo_slider_css.geturl}/>
                <script type={Page.javascript} src={Jquery_nivo_slider_pack_js.geturl}/>
                <script type={Page.javascript} src={NivoSlider_js.geturl}/>
                <link rel="stylesheet" href={Nivo_default_css.geturl}/>
                <script type={Page.javascript}>
                  nivo_init(
                    "{[css]}",
                    "{[nivocls]}",
                    "{[nivoribbon]}",
                    "{[Nivo_arrows_png.geturl]}",
                    "{[Nivo_bullets_png.geturl]}",
                    "{[Nivo_loading_gif.geturl]}"
                    );
                </script>
              </xml> 

    val init =
      return {}
      
    val r' = Page.requireHeader [#JQ] (
             Page.addHeader [#NIVO] hdr init (
               r))

    fun fslides (s:list slide) : transaction xbody = 
      x <- List.foldlM (fn r x =>
        s <- mkslide r;
        return (<xml>{x.1}{s.1}</xml>,
                <xml>{x.2}{s.2}</xml>)) (<xml/>,<xml/>) s;
      return
        <xml>
          <div class={nivocls}>
            <div class={nivoribbon}>
                <div class={css}>{x.1}</div>
                <div style="display:none;">{x.2}</div>
            </div>
          </div>
        </xml>
  in
    f fslides r'
  end


