
fun withBody [t] b z =
  z -- #Bdy ++ {Bdy = b}

(* fun withHeader [x] [t] (h:record t) = fn p => p -- #Marks ++ {Marks = h} *)
 
fun addHeader [t1] [n :: Name] [t1 ~ [n={}]] h r =
  (r -- #Hdr ++ {Hdr = <xml>{r.Hdr}{h}</xml>})
     -- #Marks ++ {Marks = r.Marks ++ {n = {}}}

(* fun addScript [t1] [n :: Name] [t1 ~ [n]] (u:url) r = *)
  (* FIXME:
   * Error Substitution in constructor is blocked by a too-deep unification variable
   *)
  (* @addHeader [t1] [n] (<xml><script type="text/javascript" src={u}/></xml>) r *)
  (* r -- #Marks ++ {Marks = r.Marks ++ {n = (<xml><script type="text/javascript" src={u}/></xml>)}} *)
  (* (fn r => r -- #Hdr ++ {Hdr = <xml>{r.Hdr}<script type="text/javascript" src={u}/></xml>}) *)
  (* ((fn r => r -- #Marks ++ {Marks = r.Marks ++ {n}}) r) *)

fun requireHeader [t1] [n :: Name] [t1 ~ [n={}]] r =
  let val x = r.Marks.n in r end

(* fun listify *)
(*   [ts ::: {Type}] *)
(*   (fl : folder ts) *)
(*   (ul : record (map Xmllike.xmllike ts)) *)
(*   (r : record ts) *)
(*      : list xhead = *)
(*   @foldR2 [Xmllike.xmllike] [ident] [fn _ => list xhead] *)
(*      (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] xmlifier value acc => *)
(*          (@Xmllike.xmllike xmlifier value) :: acc ) *)
(*      [] fl ul r *)

val def = { Marks = { JQ = {} } , Hdr = <xml/> , Bdy = return <xml><body/></xml> }

fun runPage [t2] fl f =
  h <- return (f def).Hdr;
  b <- (f def).Bdy;
  return
    <xml>
      <head>
        {h}
      </head>
      {b}
    </xml>

(* fun javaScript (u:url) : xhead = <xml><script type="text/javascript" src={u}/></xml> *)

(* fun addHeaders [t] [x] [r] h f = fn s => *)
(*   let *)
(*     val s' = s -- #Marks ++ {Marks = h} *)
(*   in *)
(*     f s' *)
(*   end *)

