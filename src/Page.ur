
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
 
fun listify
  [ts ::: {Type}]
  (fl : folder ts)
  (urlifiers : record (map Urllike.urllike ts))
  (r : record ts)
     : list url =
  @foldR2 [Urllike.urllike] [ident] [fn _ => list url]
     (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] urlifier value acc =>
         (@Urllike.urllike urlifier value) :: acc )
     [] fl urlifiers r

fun runPage
  [t1 ::: {Type}]
  [t2 ::: {Type}]
  (fl : folder t2)
  (urlifiers : record (map Urllike.urllike t2))
  (i : record (dpage t1))
  (f : record (dpage t1) -> record (dpage t2))
     : transaction page =
  (* l <- (return (listify (f i).Hdr)); *)
  b <- (f i).Bdy;
  return
    <xml>
      <head/>
      {b}
    </xml>

