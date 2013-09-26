
con urllike a = a -> url

fun urllike [a] (f : urllike a) (x : a) : url = f x
fun mkUrllike [a] (f : a -> url) : urllike a = f

val urllike_url = mkUrllike (fn (x : url) : url => x)
