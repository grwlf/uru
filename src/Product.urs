
datatype product f t =
    HOME
  | FXRTOS of f
  | TOPOR of t

val fromString : string -> string -> product string string

