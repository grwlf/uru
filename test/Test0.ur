
fun main {} : transaction page =
  Page.run (
  JQuery.add (
  Page.withBody (fn _ =>
    return
      <xml>
        Hello, jquery
      </xml>
    )))

