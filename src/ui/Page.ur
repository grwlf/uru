
fun withBody [t] b z =
  z -- #Bdy ++ {Bdy = b}

fun addHeader [t1] [n :: Name] [t1 ~ [n={}]] h tu r =
  ((r -- #Hdr ++ {Hdr = <xml>{r.Hdr}{h}</xml>})
      -- #Marks ++ {Marks = r.Marks ++ {n = {}}})
      -- #Bdy_onload ++ {Bdy_onload = (r.Bdy_onload ; tu)}

(* fun addScript [t1] [n :: Name] [t1 ~ [n]] (u:url) r = *)
  (* FIXME:
   * Error Substitution in constructor is blocked by a too-deep unification variable
   *)
  (* @addHeader [t1] [n] (<xml><script type="text/javascript" src={u}/></xml>) r *)
  (* r -- #Marks ++ {Marks = r.Marks ++ {n = (<xml><script type="text/javascript" src={u}/></xml>)}} *)
  (* (fn r => r -- #Hdr ++ {Hdr = <xml>{r.Hdr}<script type="text/javascript" src={u}/></xml>}) *)
  (* ((fn r => r -- #Marks ++ {Marks = r.Marks ++ {n}}) r) *)

fun withHeader [t] [t2] [n :: Name] [t~[n={}]] (h:xhead) f r =
    f ((r -- #Marks ++ {Marks = r.Marks ++ {n={}}})
          -- #Hdr ++ {Hdr = <xml>{r.Hdr}{h}</xml>})

fun withSettings [t] [t2] [tp] [n :: Name] [t~[n=tp]] (s:tp) f r =
    f (r -- #Marks ++ {Marks = r.Marks ++ {n=s}})

fun getSettings [t] [tp] [n :: Name] [t~[n=tp]]
  (r: record (dpage (t++[n=tp])))
    : tp =
    r.Marks.n

fun requireHeader [t1] [n :: Name] [t1 ~ [n={}]] r =
  let val x = r.Marks.n in r end



fun runPage [t2] f =
  let
    val f' = f {
      Marks = { } ,
      Hdr = <xml/> ,
      Bdy = return <xml></xml> ,
      Bdy_onload = return {}
      }
  in
    h <- return f'.Hdr;
    b <- f'.Bdy;
    return
      <xml>
        <head>
        {h}
        </head>
        <body onload={(f'.Bdy_onload)}>
        {b}
        </body>
      </xml>
  end

val javascript = blessMime "text/javascript"

