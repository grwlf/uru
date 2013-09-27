
fun withBody [t] b z =
  z -- #Bdy ++ {Bdy = b}

(* fun withHeader [x] [t] (h:record t) = fn p => p -- #Hdr ++ {Hdr = h} *)
 
fun addHeader [t1] [n :: Name] [t1 ~ [n]] h r =
  r -- #Hdr ++ {Hdr = r.Hdr ++ {n = h}}

fun addScript [t1] [n :: Name] [t1 ~ [n]] (u:url) r =
  (* FIXME:
   * Error Substitution in constructor is blocked by a too-deep unification variable
   *)
  (* @addHeader [t1] [n] (<xml><script type="text/javascript" src={u}/></xml>) r *)
  r -- #Hdr ++ {Hdr = r.Hdr ++ {n = (<xml><script type="text/javascript" src={u}/></xml>)}}

fun requireHeader [t1] [n :: Name] [t1 ~ [n]] r =
  let val x = r.Hdr.n in r end

fun listify
  [ts ::: {Type}]
  (fl : folder ts)
  (ul : record (map Xmllike.xmllike ts))
  (r : record ts)
     : list xhead =
  @foldR2 [Xmllike.xmllike] [ident] [fn _ => list xhead]
     (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] xmlifier value acc =>
         (@Xmllike.xmllike xmlifier value) :: acc )
     [] fl ul r

val def = { Hdr = {} , Bdy = return <xml><body/></xml> }

fun runPage [t2] fl ul f =
  h <- (return (List.mapX (fn h => <xml>{h}</xml>) (@listify fl ul (f def).Hdr)));
  b <- (f def).Bdy;
  return
    <xml>
      <head>
        {h}
      </head>
      {b}
    </xml>

fun javaScript (u:url) : xhead = <xml><script type="text/javascript" src={u}/></xml>

fun addHeaders [t] [x] [r] h f = fn s =>
  let
    val s' = s -- #Hdr ++ {Hdr = h}
  in
    f s'
  end

