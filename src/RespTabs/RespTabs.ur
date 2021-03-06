
con need = [JQ=unit]
con out = need ++ [RESPT=unit]

style resptabs
style resplist
style respcont
style active

fun add [t] [x] [t~out] f r = 
  let
    val j = Page.javascript

    val h = <xml>
              {Script.insert Page.javascript EasyResponsiveTabs_js.geturl}
              {Script.insert Page.javascript RespTabs_js.geturl}
              <link rel="stylesheet" href={Easy_responsive_tabs_css.geturl}/>
            </xml>

    val r' = Page.addHeader [#RESPT] h (RespTabs_js.rt_init resplist respcont resptabs active) r

    fun ftabs (s:list tab) : transaction xbody = 
      x <- List.foldlM (fn r x =>
        case r.Active of
          True =>
            return (<xml>{x.1}<li class={active}>{[r.Caption]}</li></xml>,
                    <xml>{x.2}<div>{r.Content}</div></xml>)
          | False =>
            return (<xml>{x.1}<li>{[r.Caption]}</li></xml>,
                    <xml>{x.2}<div>{r.Content}</div></xml>)) (<xml/>,<xml/>) s;
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

fun mktab (s2:string) (s:string) (x:xbody) = {Active = (s = s2), Caption = s, Content = x}

