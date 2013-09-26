

type scripts = { JQ : url, JQ_UI : url }

type dpage = { Hdr : scripts , Bdy : transaction page }

val modifyScripts : dpage -> (scripts -> scripts) -> dpage

val bdy : transaction page -> transaction dpage

val runPage : transaction dpage -> transaction page

(* val addHdr : dpage -> xhead -> dpage *)
