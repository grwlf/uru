
fun main {} : transaction page =
  Uru.run (
  JQuery.add (
  Uru.withBody (fn _ =>
    return
      <xml>
        This page contains JQuery link included. Check the page sources if you
        don't believe. Page itself does nothing particulary useful.
      </xml>
    )))

