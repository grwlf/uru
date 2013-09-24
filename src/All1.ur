
(* Poor man's Writer monad *)
type dpage = { Hdr : transaction xhead , Bdy : transaction page }

fun runPage (tp : transaction dpage) : transaction page = 
  p <- tp;
  h <- p.Hdr;
  b <- p.Bdy;
  return  <xml>
            <head>
              {h}
            </head>
            {b}
          </xml>

(* Aka return *)
val bdy x = return { Hdr = return <xml/>, Bdy = x }

(* Monadic operation : adding the header to a page *)
fun addHdr (h : xhead) (b : dpage) : dpage = {Hdr = hs <- b.Hdr ; return <xml>{hs}{h}</xml>, Bdy = b.Bdy}

(* Function makes sure that page includes menu script *)
fun with_jq_menu (x : (css_class -> transaction unit) -> transaction dpage) : transaction dpage =
  s <- Menu_js.text {};
  p <- x (fn css => Menu_js.init css "hii");
  return (addHdr (<xml><script type="application/javascript">{[s]}</script></xml>) p)
  
(** The main code *)

style mcss

fun main {} = runPage (
  with_jq_menu (fn jqmenu => bdy (
    return  <xml>
              <body onload={jqmenu mcss}>
                <ul class={mcss}>
                  <li>
                    blabla
                  </li>
                </ul>
              </body>
            </xml>)))

