
style cmenu

(* fun javaScript (u:url) : xhead = <xml><script type="text/javascript" src={u}/></xml> *)

(* val settings = { *)
(*     JQ    = javaScript (bless "http://lab.dbpmail.net/static/jquery-1.9.1.min.js") *)
(*   , JQ_UI = javaScript (bless "http://code.jquery.com/ui/1.10.3/jquery-ui.js") *)
(* } *)

val settings = {
    JQ    = <xml><script type="text/javascript" src={url (Jquery_1_9_1_js.blobpage {})}/></xml>
  , JQ_UI = <xml>
              <script type="text/javascript" src={url (Jquery_ui_js.blobpage {})}/>
              <link rel="stylesheet" href={url (Jquery_ui_css.blobpage {})}/>
            </xml>
}

fun main {} = Page.runPage (
  Page.addHeaders settings (
  Menu_jq.add (fn init =>
  Page.withBody (
    return (
      <xml>
        <body onload={init cmenu}>
          <ul class={cmenu}>
            <li><a link={main {}}>Item1</a></li>
            <li><a link={main {}}>Item2</a></li>
            <li><a link={main {}}>Item3</a></li>
            <li><a link={main {}}>Item4</a></li>
          </ul>
          bbbbbbbb
        </body>
      </xml>
    )))))

