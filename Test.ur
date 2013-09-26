
con t = [ A = int , B = int , C = int ] 

val a : $(t) = { A = 0, B = 0 , C = 0 }

val b = a ++ { D = 4 } 

fun addF [n::Name] [t:::{Type}] [[n]~t] (f:$t) : $(t++[n=int]) = f ++ {n=5}

val c = addF [#E] b

fun countFields [ts :: {Type}] (fl : folder ts) : int =
    @fold [fn _ => int] (fn [nm ::_] [v ::_] [r ::_] [[nm] ~ r] n => n + 1) 0 fl

val d = countFields [t]

fun countFields2 [ts :: {Type}] (fl : folder ts) : option int =
    @fold [fn _ => option int] (fn [nm ::_] [v ::_] [r ::_] [[nm] ~ r] _ => (Some 33)) (Some 0) fl

fun fillDef [ts :: {Type}] (fl : folder ts) : record (map (fn _ => int) ts) =
    @fold [fn r => record (map (fn _ => int) r)] (fn [nm ::_] [v ::_] [r ::_] [[nm] ~ r] x => x ++ {nm=0} ) {} fl

val e : int = (fillDef [ [ A=int , B=int ] ]).A

fun changeA [b ::: {Type}] [b~[A]] (r : record (b ++ [A=int])) = r -- #A ++ {A = 1}
fun changeB [b ::: {Type}] [b~[B]] (r : record (b ++ [B=int])) = r -- #B ++ {B = 2}
fun addC [b ::: {Type}] [b~[C]] (r : record b) : record (b ++ [C=int])= r ++ {C = 3}

val f = {A = 0, B = 1, C = 2}

val g' : record [A=int , B=int] = {A=101, B=102}
val g = addC (changeA (changeB g'))

(*
Doesn't work
fun listify [ts ::: {Type}] (fl : folder ts) (z : $(map (fn _ => int) ts)) : list int =
    @fold [fn t => list int]
          (fn [nm ::_] [v ::_] [r ::_] [[nm] ~ r] x => z.nm :: x)
          []
          fl
*)

signature INTLIKE = sig
    class intlike
    val intlike : a ::: Type -> intlike a -> a -> int
    val mkIntlike : a ::: Type -> (a -> int) -> intlike a
    val intlike_int : intlike int
end

structure Intlike : INTLIKE = struct
    con intlike a = a -> int

    fun intlike [a] (f : intlike a) (x : a) : int = f x
    fun mkIntlike [a] (f : a -> int) : intlike a = f

    val intlike_int = mkIntlike (fn (x : int) : int => x)
end

open Intlike

fun showRecord [ts ::: {Type}] (fl : folder ts) (shows : $(map show ts)) (names : $(map (fn _ => string) ts)) (r : $ts) : string =
    "{" ^ @foldR3 [fn _ => string] [show] [ident] [fn _ => string]
           (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] name shower value acc =>
               name ^ " = " ^ @show shower value ^ ", " ^ acc)
           "...}" fl names shows r

val h = showRecord {A = "A", B = "B"} {A = 1, B = 2.3}

fun showRecordH [ts ::: {Type}] (fl : folder ts) (shows : $(map show ts)) (names : $(map (fn _ => string) ts)) (r : $ts) : string =
    @foldR3 [fn _ => string] [show] [ident] [fn _ => string]
           (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] name shower value acc =>
               @show shower value)
           "" fl names shows r

val i = showRecordH {A = "A", B = "B"} {A = 1, B = 2.3}

fun showRecordI [ts ::: {Type}] (fl : folder ts) (shows : $(map intlike ts)) (names : $(map (fn _ => string) ts)) (r : $ts) : int =
    @foldR3 [fn _ => string] [intlike] [ident] [fn _ => int]
           (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] name intliker value acc =>
               acc + (@intlike intliker value))
           0 fl names shows r
 
val j : int = showRecordI {A = "A", B = "B"} {A = 4, B = 5}

fun showRecordI2 [ts ::: {Type}] (fl : folder ts) (shows : $(map intlike ts)) (r : $ts) : int =
    @foldR2 [intlike] [ident] [fn _ => int]
           (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] intliker value acc =>
               acc + (@intlike intliker value))
           0 fl shows r

val k : int = showRecordI2 {A = 4, B = 5}
val l : int = showRecordI2 g

fun listify [ts ::: {Type}] (fl : folder ts) (shows : $(map intlike ts)) (r : $ts) : list int =
    @foldR2 [intlike] [ident] [fn _ => list int]
           (fn [nm ::_] [t ::_] [r ::_] [[nm] ~ r] intliker value acc =>
               (@intlike intliker value) :: acc )
           [] fl shows r

val e : list int = listify g

fun main {} = 
  return
    <xml>
      <head/>
      <body>
      {[e]}
      </body>
    </xml> 

