val addHdr = Page.addHdr

(* Function makes sure that page includes menu script *)
fun with_menu (x : (css_class -> transaction unit) -> transaction dpage) : transaction dpage =
  s <- Menu_js.text {};
  p <- x (fn css => Menu_js.init css);
  return (addHdr p (
    <xml>
      <script type="text/javascript">{[s]}</script>
    </xml>))

