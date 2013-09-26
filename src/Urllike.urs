
class urllike
val urllike : a ::: Type -> urllike a -> a -> url
val mkUrllike : a ::: Type -> (a -> url) -> urllike a
val urllike_url : urllike url

