
(* FIXME: move to basis.urs *)

datatype cssVal = Str of string | Url of url

val css : list (string * cssVal) -> css_style
