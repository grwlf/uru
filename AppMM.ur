

style columnlist
style download
style work
style button
style news
style jumbotron

val template = Template.template

style box

val btn = classes (classes Bootstrap.btn Bootstrap.btn_large) Bootstrap.btn_success

val mkcell = Template.mkcell

fun demo (u:url) : xbody = <xml>
  <p style="text-align:center;margin:20px;">
    <a class={btn} href={u}>Download demo version &raquo;</a>
  </p>
  </xml>

fun learnmore (x : transaction page) : xbody =
  <xml><p><a link={x}>Learn more &raquo;</a></p></xml>

fun gennews {} : transaction xbody = 
  Template.cellsBy3 box (
    (mkcell <xml>
      <div class={columnlist}>
        <h4>Circuit Capture and PCB Layout</h4>
        <dl>
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
      </xml>) ::
    (mkcell
      <xml>
       <div class={columnlist}>
          <h4>Get more out of Pulsonix</h4>
          <dl>
            <dt><a link={main {}}>New User Forum</a></dt>
            <dd>
              Visit our new
              <a link={main {}}>User Forum</a>
              and read about how you can get the most out of your Pulsonix software. With peer
              support and lots of hints and tips about using Pulsonix, this Forum is a
              valuable resource for all Pulsonix users.
            </dd>
            <dt><a link={main {}}>Software main</a></dt>
            <dd>
              A Pulsonix main contract represents the most cost effective way of ensuring you
              and your engineering teams have access to all the assistance needed to keep you
              operating efficiently and effectively.
              <a link={main {}}>Read more</a>
              about the benefits of a main contract.
            </dd>
            <dt><a link={main {}}>Keeping up to date</a></dt>
            <dd class={work}>
              The latest updates for Pulsonix are listed here, allowing you to quickly check
              that your existing Pulsonix installation is up-to-date so you can take advantage
              of all the latest improvements.
              <div>
                Latest Updates:
                <a link={main {}}>8.0.5537</a>
                and
                <a link={main {}}>7.6.5226</a>
              </div>
            </dd>
          </dl>
        </div> 
      </xml>) ::
    (mkcell 
      <xml>
        <div class={columnlist}>
        <h4>News and Press</h4>
        <dl>
          <dt><a link={main {}}>Version 8 Available</a></dt>
          <dd class={news}>
            The latest edition of Pulsonix is now shipping. Over 45 new and improved
            features have been added; most of which have been implemented as a direct result
            of user requests.
            <div>Read more about the new<a link={main {}}>V8 features</a>.</div>
            <p>
              Click
              <a link={main {}}>here</a>
              to update your copy of Pulsonix to the latest version.
            </p>
          </dd>
        </dl>
      </div>
      </xml>
    ) ::
    [])

and genboxes {} : transaction xbody = 
  Template.cellsBy4 box (
    (mkcell
      <xml>
        <h4>Blabl Instrument Dashboard</h4>
        <img src={Whytopor1_gif.geturl}/>
        <p>Enhances the data exchange capabilities of Altium Designer by giving
        non-designers secure access to essential design data, including the ability to
        generate reports and printouts. A free application that can be installed on any
        PC.</p>
        <a link={topor {}}>Learn more >> </a>
      </xml>) ::
    (mkcell
      <xml>
        <h4>A free application</h4>
        <img src={Whytopor2_gif.geturl}/>
        <p>A stand-alone, custom instrument viewer that lets you remotely control and test
        FPGA designs using wireless or Internet technology, without having Altium
        Explore all the features and benefits Altium products have to offer, get a taste
        Designer installed. A free application that can be installed on any PC.</p>
      </xml>) ::
    (mkcell
      <xml>
        <h4>Blablabla hehe</h4>
        <img src={Whytopor4_gif.geturl}/>
        <p>Explore all the features and benefits Altium products have to offer, get a taste
        for what is possible - no strings attached. We are here every step of the way to
        help you.</p>
      </xml>) ::
    (mkcell
      <xml>
        <h4>Altium Instrument Dashboard</h4>
        <img src={Whytopor3_gif.geturl}/>
        <p>for what is possible - no strings attached. We are here every step of the way to
        Explore all the features and benefits Altium products have to offer, get a taste
        Designer installed. A free application that can be installed on any PC.</p>
      </xml>) ::
    (mkcell
      <xml>
        <h4>Blabl Instrument Dashboard</h4>
        <img src={Whytopor2_gif.geturl}/>
        <p>Explore all the features and benefits Altium products have to offer, get a taste
        FPGA designs using wireless or Internet technology, without having Altium for
        what is possible - no strings attached. We are here every step of the way to
        help you. generate reports and printouts. A free application that can be
        installed on any</p>
      </xml>) ::
    (mkcell 
      <xml>
        <h4>Explore all the features</h4>
        <img src={Whytopor1_gif.geturl}/>
        <p>Explore all the features and benefits Altium products have to offer, get a taste
        FPGA designs using wireless or Internet technology, without having Altium for
        what is possible - no strings attached. We are here every step of the way to
        help you. generate reports and printouts. A free application that can be
        installed on any</p>
      </xml>) ::
    (mkcell 
      <xml>
        <h4>And here comes text wo img</h4>
        <p>Explore all the features and benefits Altium products have to offer, get a taste
        FPGA designs using wireless or Internet technology, without having Altium for
        what is possible - no strings attached. We are here every step of the way to
        help you. generate reports and printouts. A free application that can be
        installed on any</p>
        <a link={main {}} class={btn}>Get started with Contiki &raquo;</a>
      </xml>) ::
    [])

and topor {} = 
  template {Main = (url (main {})), Self = (url (topor {})), IsMain = False } (fn tabs =>

    news <- (Template.cellsBy1 news (
      (mkcell
        <xml>
          <img src={Logo_topor_png.geturl}/>
          <dl>
            <dt>Downlowads </dt>
            <dd>Demo</dd>
            <dd>Manual</dd>

            <dt>Support</dt>
            <dd>Forum</dd>
            <dd>Contact</dd>
            <dd>FAQ</dd>
          </dl>
        </xml>
      ) :: []));

    caption <- (return
      <xml>
        <div class={Bootstrap.row_fluid}>
          <h2 class={Bootstrap.lead}>
            Topology editor and automatic router for PCB design
          </h2> 
          <img style="width:100%" src={Banner1_png.geturl}/>
          <div style="margin:10px">The product is successfully used for many plants and facilities in the following
            Russian cities: Arzamas, Volgograd, Vologda, Ekaterinburg, Zhytomir, Irkutsk,
            Kazan, Kiev, Lipetsk, Moscow, Murom, Nizhniy Novgorod, Saint-Petersburg,
            Severodonetsk, Tula, Ulyanovsk and many others.
          </div>
        </div>
      </xml>);

    feat <- Template.cellsBy3 box (
          (mkcell
            <xml>
              <h4>PCB design time reduced up to several times</h4>
              <img src={Whytopor1_gif.geturl}/>
              <p>
                TopoR topological router is distinguished by having no preferred routing
                directions, which are divisible by 45 degrees. Any-angle routing ensures more
                efficient space usage.
              </p> 
              {learnmore (main {})}
            </xml>) ::
          (mkcell
            <xml>
              <h4>High-quality autorouting</h4>
              <img src={Whytopor2_gif.geturl}/>
              <p>
                TopoR provides 100% routed layout almost instantly within a few seconds. All
                connections are routed even if technological constraints are violated.
                Autorouting is followed by the multiobjective optimization by calculating
                different variants of laying wires.
              </p> 
              {learnmore (main {})}
            </xml>) ::
          (mkcell
            <xml>
              <h4>Improved electro-magnetic compatibility</h4>
              <img src={Whytopor3_gif.geturl}/>
              TopoR allows to avoid wire parallelism reducing electromagnetic crosstalks.
              {learnmore (main {})}
            </xml>) ::
          (mkcell
            <xml>
              <h4>Design of complex and high-speed PCBs</h4>
              <img src={Whytopor4_gif.geturl}/>
              TopoR ensures full support for complex and high-speed PCBs design. 
              {learnmore (main {})}
            </xml>) ::
          []);

    tabcont <- tabs ({
        Caption = <xml>Features</xml>,
        Content = <xml>{feat}</xml>
        } :: {
        Caption = <xml>FAQ</xml>,
        Content =
         <xml>
          <div>
            <h4>Introduction to TopoR and first steps</h4>
            <p>
              We will keep constantly updating the Frequently Asked Questions section of the
              website. If you did not find the answers to your questions in this section,
              please feel free to
              <a link={main {}}>contact us</a>
            </p>
            <h5>
              Is TopoR similar to other PCB design software? Can my previous experience in
              using other CAD systems help study TopoR faster?
            </h5>
            <p>
              TopoR is fundamentally different from other CAD systems. And the skills
              necessary to master the program will be quite different.
            </p>
            <h5>Which is the maximum PCB complexity can be routed by TopoR?</h5>
            <p>Existing TopoR configurations allow to route boards up to 32 layers.</p>
            <h5>
              Who is already using TopoR? Do they have successful experience of using it?
            </h5>
            <p>
              The product is successfully used for many plants and facilities in the following
              Russian cities: Arzamas, Volgograd, Vologda, Ekaterinburg, Zhytomir, Irkutsk,
              Kazan, Kiev, Lipetsk, Moscow, Murom, Nizhniy Novgorod, Saint-Petersburg,
              Severodonetsk, Tula, Ulyanovsk and many others.
            </p>
            <h5>Is it possible to export TopoR projects to other CAD systems?</h5>
            <p>Yes, you can perform import/export of the following file formats:</p>
            <p>PCAD ASCII PCB ver. 2000, 2002, 2004, 2006</p>
            <p>PADS ASCII PCB ver. 3.5, 4.0, 5.0, 2005.0</p>
            <p>DSN/SES (SPECCTRA, Electra)</p>
            <p>DXF, GERBER, DRILL</p>
            <h4>Education and support</h4>
            <h5>
              I haven’t found answers to my questions in the documentation. How else can I
              study TopoR CAD system?
            </h5>
            <p>
              The easiest way is to address you questions to our Forum or refer to us
              directly. You can find our contact details
              <a link={main {}}>here</a>
              .
            </p>
            <h5>
              You can also find our video tutorials in the
              <a link={main {}}>Tutorials section</a>
              .
            </h5>
            <p>
              We can also provide training for more efficient insight on our product. For more
              details on trainings please
              <a link={main {}}>contact us</a>
              .
            </p>
            <h5>
              What support options will I receive after purchasing any version of TopoR?
            </h5>
            <p>
              You will receive all updates and support for free during the first year after
              the product purchase. The support period can be prolonged. For additional
              support conditions please
              <a link={main {}}>refer to us</a>
              .
            </p>
            <p>
              We are also providing online support both to our customers and users of free
              Light and Demo versions. However requests from the customers who have purchased
              our product will have higher priority.
            </p>
            <h5>What is the program lifetime?</h5>
            <p>The license is not limited in time.</p>
            <h4>Compatible systems and recommended system requirements</h4>
            <h5>
              What are the minimum system and software requirements for TopoR CAD system
              effective operation?
            </h5>
            <p>The requirements are as follows:</p>
            <ul>
              <li>
                a PC-compatible computer with an Intel Pentium III-1000 MHz processor and above
              </li>
              <li>Microsoft Windows operating system: 2000 (SP3), XP (SP2)</li>
              <li>Microsoft Internet Explorer 5.0 and above</li>
              <li>At least 256Mb RAM</li>
              <li>15MB of hard disk space</li>
              <li>
                SVGA monitor and graphics adapter, with support for at least 256 colors a
                resolution of 1024x768 and above
              </li>
              <li>A mouse with a scrolling wheel</li>
            </ul>
            <h5>
              Can I use TopoR with operating systems other than Windows, for example Linux or
              UNIX?
            </h5>
            <p>Currently only Lite version can work with Wine.</p>
            <p>We plan to add Linux support for the future versions of TopoR.</p>
            </div>
          </xml> 
        }  :: {
        Caption = <xml>Screenshots</xml>,
        Content = <xml></xml>
        } :: {
        Caption = <xml>Support</xml>,
        Content = <xml></xml>
        }:: []);

    return
      <xml>
        <div class={Bootstrap.row}>
          <div class={Bootstrap.span2}>
            {news}
          </div>
          <div class={Bootstrap.span10}>
            {caption}
            {tabcont}
            {demo (url (main {}))}
          </div>
        </div>
      </xml>
  )

and main {} = 
  template {Main = (url (main {})), Self = (url (main {})), IsMain = True}  (fn tabs =>
    n <- gennews {};
    b <- genboxes {};
    return <xml>{n}{b}</xml>
  )


