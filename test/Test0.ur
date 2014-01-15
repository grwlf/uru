
fun main {} : transaction page = Page.run (
  JQuery.add (
  Page.withBody (return
      <xml>
        Hello, jquery
      </xml>
    )))

