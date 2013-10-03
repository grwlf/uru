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
  JQ = <xml><script type={blessMime "text/javascript"} src={url (Jquery_1_9_1_js.blobpage {})}/></xml>,
  MY = 
    <xml>
      <title>AppMM</title>
      <link rel="stylesheet" href={url (AppMM_css.blobpage {})}/>
    </xml>
}

style pagecss
style megamenu
style pkchoose

fun mkmenu css = 
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
  return <xml><ul class={css}>{r}</ul></xml>

and viewpage (i:int) = main {}

and viewimg s = StaticImg.blobpage s

and main {} =
  Page.runPage (
  Page.withHeader [#JQ] (headers.JQ) (
  Page.withHeader [#MY] (headers.MY) (
  PikaChoose.add pkchoose (
  MegaMenu2.add megamenu (
  Page.withBody (
    m <- mkmenu megamenu;
    return (
     <xml>
       <div class={pagecss}>
         <div>{m}</div>
         The body
         <div style="width:520px; margin:0 auto;">
           <ul class={pkchoose}>
             <li>
               <img src={url (Img1_jpg.blobpage {})}/>
               <span>This is an example of the basic theme.</span>
             </li>
             <li>
               <img src={url (Img2_jpg.blobpage {})}/>
               <span>jCarousel is supported and can be integrated with PikaChoose!</span>
             </li>
             <li>
               <img src={url (Img3_jpg.blobpage {})}/>
               <span>Be sure to check out PikaChoose.com for updates.</span>
             </li>
           </ul>
         </div>
       </div>
     </xml> 
    )))))))

