

style columnlist
style download
style work
style button
style news

val template = Template.template

style box

val btn = classes (classes Bootstrap.btn Bootstrap.btn_large) Bootstrap.btn_success

val mkcell = Template.mkcell

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

and toporboxes {} : transaction xbody = 
  Template.cellsBy4 box (
    (mkcell
      <xml>
        <h4>PCB design time reduced up to several times</h4>
        <img src={Whytopor1_gif.geturl}/>
        <p>TopoR provides extremely fast comprehensive routing with unsurpassed quality</p>
        {learnmore (main {})}
      </xml>) ::
    (mkcell
      <xml>
        <h4>PCB design time reduced up to several times</h4>
        <img src={Whytopor2_gif.geturl}/>
        <p>Autorouting quality is comparable to manual routing or exceeds it.</p>
        {learnmore (main {})}
      </xml>) ::
    (mkcell
      <xml>
        <h4>Design of complex and high-speed PCBs</h4>
        <img src={Whytopor3_gif.geturl}/>
        <p>TopoR allows to avoid wire parallelism reducing electromagnetic crosstalks.</p>
        {learnmore (main {})}
      </xml>) ::
    [])

and topor {} = 
  template False (url (topor {})) (
    b <- toporboxes {};
    return <xml>{b}</xml>
  )

and main {} = 
  template True (url (main {})) (
    n <- gennews {};
    b <- genboxes {};
    return <xml>{n}{b}</xml>
  )


