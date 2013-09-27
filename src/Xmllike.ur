
con xmllike a = a -> xhead

fun xmllike [a] (f : xmllike a) (x : a) : xhead = f x
fun mkXmllike [a] (f : a -> xhead) : xmllike a = f

val xmllike_xhead = mkXmllike (fn (x : xhead) : xhead => x)
