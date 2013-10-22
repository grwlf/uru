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

style box
style designnote
style footlink

(* Header *)
style langmenu

(* Menu *)
style outermenu
style megamenu
style menucolumn

(* Editor *)
style tmce

(* Content *)
style outercolumns

(* Slider *)
style outerslider
style nivosld

(* Footer *)
style outerfooter

fun twocols tc1 tc2 =
  let 
    val css = CSS.css
    val cs = ("text-align", CSS.Str "left") ::
             []

    fun box w = ("overflow",CSS.Str "hidden") ::
                ("display",CSS.Str "inline-block") ::
                ("width",CSS.Str w) ::
                ("vertical-align",CSS.Str "top") ::
                ("padding-left",CSS.Str "20px") ::
                ("-webkit-box-sizing",CSS.Str "border-box") ::
                ("-moz-box-sizing",CSS.Str "border-box") ::
                ("box-sizing",CSS.Str "border-box") ::
                []

    val s1 = box "49%"
    val s2 = 
      ("text-align", CSS.Str "right") ::
      box "49%"
  in
  c1 <- tc1;
  c2 <- tc2;
  return <xml>
      <div style={css cs}>
        <div style={css s1}> {c1} </div>
        <div style={css s2}> {c2} </div>
      </div>
    </xml>
  end


val css = CSS.css

fun indiv c tx =
  x <- tx;
  return
    <xml><div class={c}>
      <div class={Bootstrap.container}>{x}</div>
    </div></xml>

fun takeByN [t ::: Type] (n:int) (l:list t) : list (list t) =
  case l of
    _ :: _ => (List.take n l) :: (takeByN n (List.drop n l))
    | []  => []

fun wrap_menu x = indiv outermenu x

fun wrap_slider x = indiv outerslider x

fun wrap_tabs x = indiv outercolumns x

fun wrap_footer x = indiv outerfooter x

fun mkcell (x:xbody) : cell = { Content = x }

fun cellsByN n spancss boxcss (l:list cell) : transaction xbody =
  let
    val x : xbody =
      List.mapX (fn l =>
        let
          val x = List.mapX (fn x => <xml><div class={classes boxcss spancss}>{x.Content}</div></xml>) l
        in
          <xml><div class={Bootstrap.row_fluid}>{x}</div></xml>
        end) (takeByN n l)
  in
  (return x)
  end

val cellsBy3 = cellsByN 3 Bootstrap.span4
val cellsBy4 = cellsByN 4 Bootstrap.span3
val cellsBy1 = cellsByN 1 Bootstrap.span12

val js = Page.javascript

val headers = {
  JQ = <xml><script type={js} src={Jquery_1_9_1_js.geturl}/></xml>,
  MY = 
    <xml>
      <title>AppMM</title>
      <link rel="stylesheet" href={AppMM_css.geturl}/>
    </xml>,
  FW = { Width = 900 }
}

fun mkcrumb (u:url) (s:string) = {Url = u, Caption=s}

fun mkcrumb2 (x:transaction page) (s:string) = {Url = url x, Caption=s}

fun fvoid {} = {}

and image n : transaction page =
  b <- oneRow (SELECT * FROM imaget WHERE imaget.Nam = {[n]});
  returnBlob b.Imaget.Data (blessMime "image/png")

and template (s:settings) (cs:list crumb) (x:RespTabs.tabs -> transaction xbody) = let
  
  val crumbs = (mkcrumb s.Main "Home") :: cs

  (* val self = url (template ismain x) *)

  fun prodlink s1 s2 = <xml><a link={s.Product s1 s2}>{[s2]}</a></xml>

  fun mkheader (css:css_class) : transaction xbody = 

    h <- twocols
      (return <xml><div>
          <a href={s.Main}> <img src={Logo_gif.geturl}/> </a>
        </div></xml>)
      (return
        <xml>
          <div class={langmenu}>
          <a href={s.Self}><img src={Flag_ru_gif.geturl}/>Русский</a>
          <a href={s.Self}><img src={Flag_uk_gif.geturl}/>English</a>
          <a href={s.Self}><img src={Flag_jp_gif.geturl}/>日本語</a>
          </div>
        </xml>);

    ps <- ThreeColumns.cells (
      List.mapQuery (SELECT * FROM product) (fn prod =>
        ThreeColumns.mkcell
          <xml>
            <div class={menucolumn}>
              <div style="height:65px;display:table">
                <div style="display:table-cell; vertical-align:middle;">
                  <a link={s.Product prod.Product.Caption ""}>
                  <img style="width:60%" src={url (image prod.Product.Logo)}/>
                  </a>
                </div>
              </div>
              <dl>
                <dd>{prodlink prod.Product.Caption "FAQ"}</dd>
                <dd>{prodlink prod.Product.Caption "Screenshots"}</dd>
                <dd>{prodlink prod.Product.Caption "Downloads"}</dd>
                <dd>{prodlink prod.Product.Caption "Feedback"}</dd>
              </dl>
            </div>
          </xml>
        ));

    return
      <xml>
        <div>
          {h}
          <div style="text-align:right">
            <ul class={css} style="list-style:none;display:none">
              <li>
                <a href={s.Self}>Products</a>
                <div style="width:800px">
                  {ps}
                  <p class={designnote}>Note: Each product menu item corresponds to a tab on the product's page</p>
                </div>
              </li>
              <li>
                <a href={s.Self}>Sales</a>
              </li>
              <li><a href={s.Self}>Contacts</a></li>
              <li><a href={s.Self}>Community</a></li>
              <li><a href={s.Self}>Blog</a></li>
            </ul>
          </div>
        </div>
     </xml>


  in
  Page.runPage (
  Page.withHeader [#JQ] (headers.JQ) (
  Page.withSettings [#FW] (headers.FW) (
  NivoSlider.add nivosld (fn slider =>
  MegaMenu2.add megamenu (
  RespTabs.add (fn tabs =>
  Bootstrap.add (
  Page.withHeader [#MY] (headers.MY) (
  Page.withBody (

    m <- wrap_menu (mkheader megamenu);

    sl <- (case s.IsMain of
      True =>
        wrap_slider (slider ({
          Url = Banner_rtos_jpg.geturl,
          Title = Some <xml><span>Real time operating system for embedded applications</span></xml>
        } :: {
          Url = Banner_simone_jpg.geturl,
          Title = Some <xml><span>Electronic circuit simulator</span></xml>
        } :: {
          Url = Banner_topor_jpg.geturl,
          Title = Some <xml><span>Topology editor and automatic router for PCB design</span></xml>
        } :: []))
      |False => return <xml/>);

    x' <- wrap_tabs (x tabs);

    cr <- (case s.IsMain of
      False => wrap_tabs (
          l <- return (List.foldr (fn c x =>
                <xml>
                  <li>
                  <a href={c.Url}>{[c.Caption]}</a>
                  <span class={Bootstrap.divider}>/</span>
                  </li>
                  {x}
                </xml>) <xml/> (crumbs));
          return <xml><ul class={Bootstrap.breadcrumb}>{l}</ul></xml>)
      |True => return <xml/>);

    ft <- wrap_footer (
      return
        <xml>
          <div class={Bootstrap.row_fluid}>
            <p>© 2008—2013 Eremex, Ltd.© 2008—2013 Eremex, Ltd.</p>
            <p>
              Tel: +7 (495) 232-18-64, E-mail: info@eremex.com Tel: +7 (495) 232-18-64,
              E-mail:
              <a href="mailto:info@eremex.com">info@eremex.com</a>
            </p>
          </div>
          <div class={Bootstrap.row_fluid}>
          <div class={Bootstrap.span3}>
          <div class={footlink}>
            Product Information
            <br/>
            <a href={s.Self}>Product Overview</a>
            <br/>
            <a href={s.Self} target="_blank">8.0 Datasheet</a>
            <br/>
            <a href={s.Self}>Schematic Capture</a>
            <br/>
            <a href={s.Self}>PCB Layout</a>
            <br/>
            <a href={s.Self}>Circuit Simulation</a>
            <br/>
            <a href={s.Self}>PCB Autorouting</a>
            <br/>
            <a href={s.Self}>High Speed Design</a>
            <br/>
            <a href={s.Self}>Database Connection</a>
            <br/>
          </div>
          </div>
          <div class={Bootstrap.span3}>
          <div class={footlink}>
          Sales
          <br/>
          <a href={s.Self}>Where to buy</a>
          <br/>
          <a href={s.Self}>Download free trial</a>
          <br/>
          <a href={s.Self}>What our customers say</a>
          <br/>
          <a href={s.Self}>Why buy maintenance?</a>
          <br/>
          <a href={s.Self}>Come back on maintenance</a>
          <br/>
          <a href={s.Self}>How to update to the latest version</a>
          <br/>
          </div>
          </div>
          <div class={Bootstrap.span3}>
          <div class={footlink}>
            Support
            <br/>
            <a href={s.Self}>Updates and Service Packs</a>
            <br/>
            <a href={s.Self}>Getting help and support</a>
            <br/>
            <a href={s.Self}>Supported Windows versions</a>
            <br/>
            <a href={s.Self}>Download documentation</a>
            <br/>
            <a href={s.Self}>User Forum</a>
            <br/>
            <a href={s.Self}>Renewing maintenance</a>
            <br/>
          </div>
          </div>
          <div class={Bootstrap.span3}>
          <div class={footlink}>
            Services
            <br/>
            <a href={s.Self}>Training</a>
            <br/>
            <a href={s.Self}>PCB design services</a>
            <br/>
            <a href={s.Self}>Links and partners</a>
            <br/>
            <br/>
            <a href={s.Self}>Registered user login</a>
            <br/>
            <br/>
            <a href={s.Self}>Contact us</a>
            <br/>
            <a href={s.Self}>areer Opportunities</a>
          </div>
          </div>
          </div>
        </xml>);

    return
      <xml>
        {m}
        {sl}
        {cr}
        (* {t} *)
        {x'}
        {ft}
      </xml>

  )))))))))
  end

