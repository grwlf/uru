
fun concatX (ls : list xhead) : xhead = 
  case ls of
      [] => <xml/>
    | x :: ls => <xml>{x}{concatX ls}</xml>

(* Poor man's Writer monad *)
type dpage = { Hdr : list xhead , Bdy : transaction page }

fun runPage (tp : transaction dpage) : transaction page = 
  p <- tp;
  let 
    val (h : xhead) = <xml>{concatX p.Hdr}</xml>
  in 
    b <- p.Bdy;
    return  <xml>
              <head>
                {h}
              </head>
              {b}
            </xml>
  end

(* Aka return *)
val bdy x = return { Hdr = [], Bdy = x }

(* Monadic operation : adding the header to a page *)
fun addHdr (h : xhead) (b : dpage) : dpage = {Hdr = h :: b.Hdr, Bdy = b.Bdy}

(* Function makes sure that page includes menu script *)
fun with_jq_menu (x : (css_class -> transaction unit) -> transaction dpage) : transaction dpage =
  s <- Menu_js.text {};
  p <- x (Menu_js.init);
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

