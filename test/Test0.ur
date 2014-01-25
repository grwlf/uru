
fun main {} : transaction page =
  Uru.run (
  JQuery.add (
  Uru.withBody (fn _ =>
    c <- channel;
    send c 0;
    return
      <xml>
        Hello, jquery
        <active code={i<-recv c; return <xml>{[i]}</xml>}/>
      </xml>
    )))

