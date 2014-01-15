
style cmenu
style pika
style nivo

(* table tst : { A : list int } *)


(* fun read_list [t ::: Type] (x:read t) : read (list t) = *)
(*   let *)
(*     fun rd (s:string) : list t = *) 
(*       case substring s 0 4 of *)
(*           " :: " => (readError s) :: (rd (substring s 4 (strlen s))) *)
(*         | "[]"  => [] *)
(*         | _ => [] *)
(*   in *)
(*     mkRead rd (fn s => None) *)
(*   end *)


fun main {} : transaction page = Page.run (
  JQuery.add (
  JQueryUI.add (
  Bootstrap.add (
  RespTabs.add (fn tabs =>
  Menu_jq.add cmenu (
  PikaChoose.add pika (
  NivoSlider.add nivo (fn slides =>
  Page.withBody (
    
    t <- tabs (
      RespTabs.mktab "" "Tab1"
        <xml>
          The <a href={bless "http://plugins.jquery.com/Easy-Responsive-Tabs-to-Accordion/"}>
          Easy Responsive Tabs</a> control
        </xml> :: 
      RespTabs.mktab "" "Tab2" <xml>foobar</xml> :: 
      RespTabs.mktab "" "Tab3" <xml><b>Zzzzzz</b>zzzz</xml> :: 
      []);

    n <- slides (
      {Url = Walle_jpg.geturl, Title = Some
        <xml>The <a href={bless "http://nivo.dev7studios.com"}>NivoSlider</a> control</xml>} ::
      {Url = Nemo_jpg.geturl, Title = Some
        <xml>Another slide with <b>HTML</b> markup</xml>} ::
      []);

    return (

      <xml>
        <div class={Bootstrap.container}>
          <h1>Hello, menu</h1>
          <ul class={cmenu}>
            (* <li><a href={url (main {})}>Item1</a></li> *)
            (* <li><a link={main {}}>Item2</a></li> *)
            (* <li><a link={main {}}>Item3</a></li> *)
            (* <li> <a link={main {}}>Item4</a> </li> *)
          </ul>

          <div class={Bootstrap.row_fluid}>
          <h2>Hello, RespTabs</h2>
          {t}
          </div>

          <div class={Bootstrap.row_fluid}>
            <h2>Hello, NivoSlider</h2>
            {n}
          </div>

        </div>
      </xml>

    ))))))))))

