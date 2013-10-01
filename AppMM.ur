fun anyway [t] (c : transaction t) : transaction {} = 
  x <- c ;
  return {}


sequence page_seq
table page : { Id : int, MenuText : string }
  PRIMARY KEY Id

fun newPage (t:string) i : transaction int =
  anyway( tryDml (INSERT INTO page(Id, MenuText) VALUES ({[i]}, {[t]})) );
  return i

sequence menusub_seq
table menusub : { Id : int, Caption : string, TopId : int }
  PRIMARY KEY Id,
  CONSTRAINT PageLink FOREIGN KEY TopId REFERENCES page (Id)

fun newSubmenu (s:string) (topid:int) i : transaction int =
  anyway( tryDml (INSERT INTO menusub(Id, Caption, TopId) VALUES ({[i]}, {[s]}, {[topid]})) );
  return i

task initialize = fn {} => 
  h <- newPage "Top" 0;
  p <- newPage "Products" 1;
  s <- newPage "Sales" 2;
  c <- newPage "Contact us" 3;
  co <- newPage "Community" 4;

  anyway ( newSubmenu "FX-RTOS" p 0);
  anyway ( newSubmenu "Schematic" p 1);
  anyway ( newSubmenu "Librarian" p 2);

  anyway ( newSubmenu "Blog" co 3);
  anyway ( newSubmenu "Forum" co 4);
  return {}

val headers = {
  JQ = <xml><script type="text/javascript" src={url (Jquery_1_9_1_js.blobpage {})}/></xml>,
  MY = (fn (x:xhead) => x)
    <xml>
      <title>AppMM</title>
      <link rel="stylesheet" href={url (AppMM_css.blobpage {})}/>
    </xml>
}

(* val x : css_style = "width : 500px ;" *)

val y:css_style = oneProperty noStyle (value (property "width") (atom "500px"))

val k : css_style = STYLE "width:500px;height:1000px"

style megamenu
style pkchoose

fun mkmenu {} = 
  r <- queryX' (SELECT * FROM page) (fn r => 
    s <- queryX (SELECT * FROM menusub WHERE (menusub.TopId = {[r.Page.Id]})) (fn r' =>
      <xml>
        <p>{[r'.Menusub.Caption]}</p>
      </xml>);
    return
      <xml>
        <li>
          <a link={viewpage r.Page.Id}> {[r.Page.MenuText]} </a>
          <div>
          {s}
          </div>
        </li>
      </xml>);
  return <xml><ul class={megamenu}>{r}</ul></xml>

and viewpage (i:int) = main {}

and viewimg s = StaticImg.blobpage s

and main {} = Page.runPage (
  Page.addHeaders headers (
  MegaMenu2.add (fn init =>
  PikaChoose.add (fn pkch_init =>
  Page.withBody (
    i <- return (init megamenu);
    m <- mkmenu {};
    return (
      <xml>
        <body onload={init megamenu}>
          {m}
          The body
          (* <ul class={pkchoose} > *)
          (*   <li><img src={url (Img1_jpg.blobpage {})}/><span>This is an example of the basic theme.</span></li> *)
          (*   <li><img src={url (Img2_jpg.blobpage {})}/><span>jCarousel is supported and can be integrated with PikaChoose!</span></li> *)
          (*   <li><img src={url (Img3_jpg.blobpage {})}/><span>Be sure to check out PikaChoose.com for updates.</span></li> *)
          (* </ul> *)
        </body>
      </xml>
    ))))))


          (* <ul class={megamenu}> *)
          (*   <li> *)
          (*     <a link={main {}}>One Liner</a> *)
          (*     <div style="width: 500px;"> *)
          (*       See how the position of the menu gets adjusted to stay within the outer bounds. *)
          (*     </div> *)
          (*   </li> *)
          (*   <li> *)
          (*     <a link={main {}}>Two Liner</a> *)
          (*     <div style="width: 500px;"> *)
          (*       See how the position of the menu gets adjusted to stay within the outer bounds. *)
          (*     </div> *)
          (*   </li> *)
          (*   <li><a link={main {}}>Item1</a></li> *)
          (*   <li><a link={main {}}>Item2</a></li> *)
          (*   <li><a link={main {}}>Item3</a></li> *)
          (*   <li><a link={main {}}>Item4</a></li> *)
          (* </ul> *)
