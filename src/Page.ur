
fun runPage (tp : transaction dpage) : transaction page = 
  p <- tp;
  h <- (return p.Hdr);
  b <- p.Bdy;
  return  <xml>
            <head>
              <script type="text/javascript" src={h.JQ}/>
              <script type="text/javascript" src={h.JQ_UI}/>
            </head>
            {b}
          </xml>

(* Aka return *)
val bdy x = return { Hdr = { JQ = bless "http://null", JQ_UI = bless "http://null"}, Bdy = x }

(* Monadic operation : adding the header to a page *)
(* fun addHdr (b : dpage) (h : xhead) : dpage = {Hdr = hs <- b.Hdr ; return <xml>{hs}{h}</xml>, Bdy = b.Bdy} *)

fun modifyScripts (p : dpage) (f : scripts -> scripts) : dpage = p -- #Hdr ++ {Hdr = f (p.Hdr)}
