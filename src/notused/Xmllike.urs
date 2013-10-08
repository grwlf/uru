
class xmllike

val xmllike : a ::: Type -> xmllike a -> a -> xhead

val mkXmllike : a ::: Type -> (a -> xhead) -> xmllike a

val xmllike_xhead : xmllike xhead

