fun anyway [t] (c : transaction t) : transaction {} = 
  x <- c ;
  return {}

sequence img_seq
table imaget : { Nam : string, Data : blob }
  PRIMARY KEY Nam

fun newImage (n:string) (b:blob) : transaction string =
  anyway (tryDml (INSERT INTO imaget(Nam, Data) VALUES ({[n]}, {[b]})));
  return n

sequence page_seq
table page : { Id : int, MenuText : string }
  PRIMARY KEY Id

fun newPage (t:string) i : transaction int =
  anyway( tryDml (INSERT INTO page(Id, MenuText) VALUES ({[i]}, {[t]})) );
  return i

sequence product_seq
table product : { Id : int, Caption : string, Slogan : string, Logo : string, PageId : int }
  PRIMARY KEY Id,
  CONSTRAINT PageLink FOREIGN KEY PageId REFERENCES page(Id)

fun newProduct i c sl l pg : transaction int =
  anyway( tryDml (INSERT INTO product(Id, Caption, Slogan, Logo, PageId)
                  VALUES ({[i]},{[c]},{[sl]},{[l]},{[pg]})
                  ));
  return i

task initialize = fn {} => 
  t <- newPage "Top" 0;

  anyway (
    n <- (return "Topor");
    s <- (return "Topology editor and automatic router for PCB design");
    b <- Logo_topor_png.binary {};
    i <- newImage n b;
    anyway ( newProduct 0 n s i t)
  );

  anyway (
    n <- (return "FX-RTOS");
    s <- (return "Real time operating system for embedded applications");
    b <- Logo_rtos_png.binary {}; 
    i <- newImage n b;
    anyway ( newProduct 1 n s i t)
  );

  anyway (
    n <- (return "SimONE");
    s <- (return "Electronic circuit simulator");
    b <- Logo_simone_png.binary {};
    i <- newImage n b;
    anyway ( newProduct 2 n s i t)
  );

  return {}

(* Header *)
style langmenu

(* Menu *)
style outermenu
style megamenu

(* Editor *)
style tmce

(* Content *)
style outercolumns

(* Slider *)
style outerslider
style nivosld


fun fvoid {} = {}

and image n : transaction page =
  b <- oneRow (SELECT * FROM imaget WHERE imaget.Nam = {[n]});
  returnBlob b.Imaget.Data (blessMime "image/png")

and template (x:transaction xbody) = let

  fun viewpage (i:int) = template x

  fun mkmenu (css:css_class) : transaction xbody = 
    ps <- queryX' (SELECT * FROM product) (fn prod =>
      return
        <xml>
          <div>
          <p>{[prod.Product.Caption]}</p>
          <img src={url (image prod.Product.Logo)}/>
          </div>
        </xml>);
    c <- ThreeColumns.twocols
      (return <xml><div><img src={Logo_gif.geturl}/></div></xml>)
      (return
        <xml>
          <div class={langmenu}>
          <a link={template x}><img src={Flag_ru_gif.geturl}/>Русский</a>
          <a link={template x}><img src={Flag_uk_gif.geturl}/>English</a>
          <a link={template x}><img src={Flag_jp_gif.geturl}/>日本語</a>
          </div>
        </xml>);
    return
      <xml>
        <div>
          {c}
          <ul class={css}>
          <li><a link={template x}>Products</a><div>{ps}</div></li>
          <li><a link={template x}>Blog</a></li>
          <li><a link={template x}>Sales</a></li>
          <li><a link={template x}>Contacts</a></li>
          <li><a link={template x}>Community</a></li>
          </ul>
        </div>
     </xml> 

    val css = CSS.css

    val headers = {
      JQ = <xml><script type={blessMime "text/javascript"} src={url (Jquery_1_9_1_js.blobpage {})}/></xml>,
      MY = 
        <xml>
          <title>AppMM</title>
          <link rel="stylesheet" href={url (AppMM_css.blobpage {})}/>
        </xml>,
      FW = { Width = 900 }
    }

    fun indiv c tx =
      x <- tx;
      return
        <xml><div class={c}>
          <div style="margin:0 auto; width:900px;">{x}</div>
        </div></xml>

    fun padding m tx =
      let
        val p = ("padding-top", CSS.Str m) :: []
      in
        x <- tx;
        return <xml><div style={css p}>{x}</div></xml>
      end

    fun wrap_menu x = indiv outermenu x

    fun wrap_slider x = indiv outerslider (padding "10%" x)

    fun wrap_columns x = indiv outercolumns x

    fun wrap_tabs x = indiv outercolumns x

  in
  Page.runPage (
  Page.withHeader [#JQ] (headers.JQ) (
  Page.withHeader [#MY] (headers.MY) (
  Page.withSettings [#FW] (headers.FW) (
  NivoSlider.add nivosld (fn slider =>
  MegaMenu2.add megamenu (
  TinyMCE.add tmce ( Nemo_jpg.geturl :: Walle_jpg.geturl :: [] ) (
  RespTabs.add (fn tabs =>
  Page.withBody (

    m <- wrap_menu (mkmenu megamenu);

    s <- wrap_slider (slider ({
        Url = Banner_rtos_jpg.geturl,
        Title = Some <xml><span>Real time operating system for embedded applications</span></xml>
      } :: {
        Url = Banner_simone_jpg.geturl,
        Title = Some <xml><span>Electronic circuit simulator</span></xml>
      } :: {
        Url = Banner_topor_jpg.geturl,
        Title = Some <xml><span>Topology editor and automatic router for PCB design</span></xml>
      } :: []));

    t <- wrap_tabs (tabs ({
        Caption = <xml>Haha</xml>,
        Content = <xml>Foobar</xml>
      } :: {
        Caption = <xml>Hehe</xml>,
        Content = <xml>Barfoo</xml>
      } :: []
    ));

    x' <- wrap_columns x;

    return
      <xml>
        {m}
        {s}
        {t}
        {x'}
      </xml>

  )))))))))
  end

