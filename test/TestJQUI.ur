
fun main {} : transaction page =
  Uru.run (
  JQuery.add (
  JQueryUI.add (
  Uru.withBody (fn _ =>
    return
      <xml>
        Hello, JQueryUI
      </xml>
    ))))
