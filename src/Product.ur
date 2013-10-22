datatype product = HOME | FXRTOS of string | TOPOR of string

fun fromString s1 s2 =
    case (String.mp tolower s1) of
        "topor" => TOPOR s2
      | "fx-rtos" => FXRTOS s2
      | "fxrtos" => FXRTOS s2
      | "fx_rtos" => FXRTOS s2
      | _ => HOME
