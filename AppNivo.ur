
val headers = {
  JQ = <xml><script type={blessMime "text/javascript"} src={url (Jquery_1_9_1_js.blobpage {})}/></xml>,
  MY = 
    <xml>
      <title>AppNivo</title>
      <link rel="stylesheet" href={url (AppMM_css.blobpage {})}/>
    </xml>
}

style capt
style nivocls

fun viewpage (i:int) = main {}

and main {} =
  Page.runPage (
  Page.withHeader [#JQ] (headers.JQ) (
  Page.withHeader [#MY] (headers.MY) (
  NivoSlider.add nivocls (fn slides =>
  Page.withBody (
    s <- slides (
      {Url = Banner_rtos_jpg.geturl,
       Title = Some <xml>
          <strong>This</strong> is an example of a <em>HTML</em> caption with <a link={main {}}>a link</a>
        </xml>
      } ::
      {Url = Banner_simone_jpg.geturl, Title = None} ::
      {Url = Banner_topor_jpg.geturl, Title = None} ::
      []);

    return (
      <xml>
        <div style="width:80%; margin: 100px auto;">
          {s}
        </div>
      </xml> 
    ))))))

