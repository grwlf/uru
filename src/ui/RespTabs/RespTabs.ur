
con need = [JQ=unit]
con out = need ++ [RESPT=unit]

style resptabs
style resplist
style respcont

fun add [t] [x] [t~out] f r = 
  let
    val j = Page.javascript

    val h = <xml>
              <script type={j} src={EasyResponsiveTabs_js.geturl}/>
              <script type={j} src={RespTabs_js.geturl}/>
              <link rel="stylesheet" href={Easy_responsive_tabs_css.geturl}/>
            </xml>

    val r' = Page.addHeader [#RESPT] h (RespTabs_js.rt_init resplist respcont resptabs) r

    fun ftabs (s:list tab) : transaction xbody = 
      x <- List.foldlM (fn r x =>
        cn <- return r.Caption;
        ct <- return r.Content;
        return (<xml>{x.1}<li>{cn}</li></xml>,
                <xml>{x.2}<div>{ct}</div></xml>)) (<xml/>,<xml/>) s;
      return
        <xml>
          <div class={resptabs}>
            <ul class={resplist}>{x.1}</ul>
            <div class={respcont}>{x.2}</div>
          </div>
        </xml>

  in
    f ftabs r'
  end

