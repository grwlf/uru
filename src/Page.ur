
(*
signature URLLIKE = sig
  class urllike
  val urllike : a ::: Type -> urllike a -> a -> url
  val mkUrllike : a ::: Type -> (a -> url) -> urllike a
  val urllike_url : urllike url
end

structure Urllike : URLLIKE = struct
  con urllike a = a -> url

  fun urllike [a] (f : urllike a) (x : a) : url = f x
  fun mkUrllike [a] (f : a -> url) : urllike a = f

  val urllike_url = mkUrllike (fn (x : url) : url => x)
end
*)

fun bdy
  [t ::: {Type}]
  (b : transaction page)
  (z : (record (dpage t)))
     : (record (dpage t)) =
  z -- #Bdy ++ {Bdy = b}
 
fun addScript [t1 ::: {Type}]
  [n :: Name]
  (u:url)
  [t1 ~ [n]]
  (r : record (dpage t1))
     : record (dpage (t1++[n=url])) =
  r -- #Hdr ++ {Hdr = r.Hdr ++ {n = u}}

fun requireScript
  [t1 ::: {Type}]
  [n :: Name]
  [t1 ~ [n]]
  (r : record (dpage (t1 ++ [n=url])))
     : record (dpage (t1 ++ [n=url])) =
  let val x = r.Hdr.n in r end

fun listify
  [ts ::: {Type}]
  (fl : folder ts)
  (ul : record (map Urllike.urllike ts))
  (r : record ts)
     : list url =
  @foldR2 [Urllike.urllike] [ident] [fn _ => list url]
     (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] urlifier value acc =>
         (@Urllike.urllike urlifier value) :: acc )
     [] fl ul r

fun runPage
  [t1 ::: {Type}]
  [t2 ::: {Type}]
  (fl : folder t2)
  (ul : record (map Urllike.urllike t2))
  (i : record (dpage t1))
  (f : record (dpage t1) -> record (dpage t2))
     : transaction page =
  l <- (return (@listify fl ul (f i).Hdr));
  b <- (f i).Bdy;
  xs <- (return (List.mapX (fn u => <xml><a href={u}>link</a></xml>) l));
  return
    <xml>
      <head/>
      <body>
      {xs}
      </body>
    </xml>

