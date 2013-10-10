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

style pagecss
style megamenu
style pkchoose
style tmce

style columnlist
style download
style info
style work
style button
style news
style nivosld

style outercolumns
style outerslider
style outermenu

fun fvoid {} = {}

and mkmenu (css:css_class) : transaction xbody = 
  ps <- queryX' (SELECT * FROM product) (fn prod =>
    return
      <xml>
        <div>
        <p>{[prod.Product.Caption]}</p>
        <img src={url (image prod.Product.Logo)}/>
        </div>
      </xml>);
  return
    <xml>
      <div>
        <img src={Logo_gif.geturl}/>
      </div>
      <div>
        <ul class={css}>
        <li><a link={main {}}>Products</a><div>{ps}</div></li>
        <li><a link={main {}}>Blog</a></li>
        <li><a link={main {}}>Sales</a></li>
        <li><a link={main {}}>Contacts</a></li>
        <li><a link={main {}}>Community</a></li>
        </ul>
      </div>
   </xml> 

and image n : transaction page =
  b <- oneRow (SELECT * FROM imaget WHERE imaget.Nam = {[n]});
  returnBlob b.Imaget.Data (blessMime "image/png")

and gennews s : transaction xbody = 
  let val col1of3 = s.TC_Col1
      val col2of3 = s.TC_Col2
      val col3of3 = s.TC_Col3
  in
  return
    <xml>
      <div style={col1of3}>
        <h2>Circuit Capture and PCB Layout</h2>
        <dl class={columnlist}>
          <dt><a link={main {}}>Download a free trial copy now</a></dt>
          <dd class={download}>
            Pulsonix Lite is available as a free trial
            <a link={main {}}>download</a>
            . With no set time-limit, this version allows you to test out all the key
            product features before you buy. And with designs of up to 100 component pins,
            it even allows you to save them.
            <a link={main {}}>Download</a>
            now and see why so many people have switched to Pulsonix.
          </dd>
          <dt><a link={main {}}>Easily migrate from another PCB system</a></dt>
          <dd class={button}>
            Pulsonix can read designs and libraries from almost every other package. Your
            legacy data is retained when you make the switch; that's Schematic and PCB
            designs plus all your libraries. View our impressive list of
            <a link={main {}}>import filters</a>
            . If yours isn't listed, send us an
            <a link={main {}}>email</a>
            and we'll advised you of your import options.
          </dd>
          <dt><a link={main {}}>Work with leading-edge technology</a></dt>
          <dd class={button}>
            Pulsonix supports the latest leading-edge technologies including flexi-rigid,
            embedded components, micro-vias and more. Take advantage of a proficient toolset
            that keeps you up-to-date with the latest design and manufacturing technologies.
            Find out
            <a link={main {}}>More</a>
          </dd>
        </dl>
      </div>
      <div style={col2of3}>
        <h2>Get more out of Pulsonix</h2>
        <dl class={columnlist}>
          <dt><a link={main {}}>New User Forum</a></dt>
          <dd class={info}>
            Visit our new
            <a link={main {}}>User Forum</a>
            and read about how you can get the most out of your Pulsonix software. With peer
            support and lots of hints and tips about using Pulsonix, this Forum is a
            valuable resource for all Pulsonix users.
          </dd>
          <dt><a link={main {}}>Software maintenance</a></dt>
          <dd class={info}>
            A Pulsonix maintenance contract represents the most cost effective way of
            ensuring you and your engineering teams have access to all the assistance needed
            to keep you operating efficiently and effectively.
            <a link={main {}}>Read more</a>
            about the benefits of a maintenance contract.
          </dd>
          <dt><a link={main {}}>Keeping up to date</a></dt>
          <dd class={work}>
            The latest updates for Pulsonix are listed here, allowing you to quickly check
            that your existing Pulsonix installation is up-to-date so you can take advantage
            of all the latest improvements.
            <p>
              Latest Updates:
              <a link={main {}}>8.0.5537</a>
              and
              <a link={main {}}>7.6.5226</a>
            </p>
          </dd>
        </dl>
      </div>
      <div style={col3of3}>
        <h2>News and Press</h2>
        <dl class={columnlist}>
          <dt><a link={main {}}>Version 8 Available</a></dt>
          <dd class={news}>
            The latest edition of Pulsonix is now shipping. Over 45 new and improved
            features have been added; most of which have been implemented as a direct result
            of user requests.
            <p>Read more about the new<a link={main {}}>V8 features</a>.</p>
            <p>
              Click
              <a link={main {}}>here</a>
              to update your copy of Pulsonix to the latest version.
            </p>
          </dd>
        </dl>
      </div>
    </xml> 
  end

and viewpage (i:int) = main {}

and main {} = let

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

  in
  Page.runPage (
  Page.withHeader [#JQ] (headers.JQ) (
  Page.withHeader [#MY] (headers.MY) (
  Page.withSettings [#FW] (headers.FW) (
  NivoSlider.add nivosld (fn slider =>
  MegaMenu2.add megamenu (
  TinyMCE.add tmce ( Nemo_jpg.geturl :: Walle_jpg.geturl :: [] ) (
  ThreeColumns.add (fn columns =>
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

    c <- wrap_columns (columns gennews);

    return
      <xml>
        {m}
        {s}
        {c}
      </xml>

  )))))))))
  end

