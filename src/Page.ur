
fun addOnLoad [t1] tu r =
  (r -- #Bdy_onload ++ {Bdy_onload = (r.Bdy_onload ; tu)})

fun withBody [t] b z =
  (z -- #Bdy ++ {Bdy = b})

fun addHeader [t1] h r =
  (r -- #Hdr ++ {Hdr = <xml>{r.Hdr}{h}</xml>})

fun addMark [t1] [n :: Name] [t1 ~ [n={}]] r =
  (r -- #Marks ++ {Marks = r.Marks ++ {n = {}}})

fun run [t2] f : transaction page =
  let
    val f' = f {
            Marks = { } ,
            Hdr = <xml/> ,
            Bdy = return <xml/> ,
            Bdy_onload = return {}
            }
  in
  b <- f'.Bdy;
  return
    <xml>
      <head>
      {f'.Hdr}
      </head>
      <body onload={(f'.Bdy_onload)}>
      {b}
      </body>
    </xml>
  end

val javascript = blessMime "text/javascript"

