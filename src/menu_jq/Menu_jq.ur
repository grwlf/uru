
(* fun addJQ u s = s -- #JQ ++ {JQ=u} *)

(* fun addJQUI u s = s -- #JQ_UI ++ {JQ_UI=u} *)

(* fun add (selector : css_class) (next : transaction dpage) : transaction dpage = *)
(*   p <- next; *) 

(*   return (Page.modifyScripts p (fn s => *)
(*     addJQ (bless "http://lab.dbpmail.net/static/jquery-1.9.1.min.js") *)
(*       (addJQUI (bless "http://code.jquery.com/ui/1.10.3/jquery-ui.js") s) *)
(*       )) *)

con dpage = Page.dpage

(* con my = fn t => record (dpage (t++[JQ=url])) *)

fun add
  [t ::: {Type}]
  (c : css_class)
  [t ~ [JQ]]
  (r : record (dpage (t ++ [JQ = url])))
     : record (dpage (t ++ [JQ = url])) = Page.requireScript [#JQ] r
  

