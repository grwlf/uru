style news
style box

val designnote = Template.designnote
val template = Template.template
val mktab = RespTabs.mktab
val mkcell = Template.mkcell
val btn = classes (classes Bootstrap.btn Bootstrap.btn_large) Bootstrap.btn_success

fun learnmore (u : url) : xbody =
  <xml><p><a href={u}>Learn more &raquo;</a></p></xml>

fun demo (u:url) : xbody = <xml>
  <p style="text-align:center;margin:20px;">
    <a class={btn} href={u}>Download demo version &raquo;</a>
  </p>
  </xml>

fun ptempl (s:Template.settings) (f:RespTabs.tabs -> transaction xbody) : transaction page =
  template s (fn tabs =>
    news <- (Template.cellsBy1 news (
      (mkcell
        <xml>
          <img src={Logo_topor_png.geturl}/>
          <dl>
            <dt>Downlowads</dt>
            <dd><a link={learn1 s}>Manual.pdf</a></dd>
            <dd><a href={s.Self}>Book.pdf</a></dd>
            <dd><a href={s.Self}>Demo_installer.exe</a></dd>
            <dd><a href={s.Self}>Full version (contact sales)</a></dd>

            <dt>Learn more articles</dt>
            <dd><a href={s.Self}>PCB design guidelines</a></dd>
            <dd><a href={s.Self}>High-quality autorouting</a></dd>
            <dd><a href={s.Self}>Improved electro-magnetic compatibility</a></dd>
            <dd><a href={s.Self}>Design of complex and high-speed PCBs</a></dd>
            <dd><a href={s.Self}>How to do stuff like that</a></dd>
            <dd><a href={s.Self}>How to upgrade to later versions</a></dd>
            <dd><a href={s.Self}>What's the trick 42</a></dd>
          </dl>
          <p class={designnote}>
            Side menu contains some links related to a specific product as well
            as links to other products
          </p>
        </xml>
      ) :: []));

    x <- f tabs;

    return
      <xml>
        <div class={Bootstrap.row}>
          <div class={Bootstrap.span2}>
            {news}
          </div>
          <div class={Bootstrap.span10}>
            {x}
          </div>
        </div>
      </xml>
  )

and product s s2 = 
  ptempl s (fn tabs =>
    caption <- (return
      <xml>
        <div class={Bootstrap.row_fluid}>
          <h2 class={Bootstrap.lead}>
            FXRTOS blablabla
          </h2> 
          <img style="width:100%" src={Banner1_png.geturl}/>
          <div style="margin:10px">
            <p class={designnote}>Here comes the marketing info, like slogan or something. For example:</p>

            <p>The product is successfully used for many plants and facilities in the following
            Russian cities: Arzamas, Volgograd, Vologda, Ekaterinburg, Zhytomir, Irkutsk,
            Kazan, Kiev, Lipetsk, Moscow, Murom, Nizhniy Novgorod, Saint-Petersburg,
            Severodonetsk, Tula, Ulyanovsk and many others.</p>
          </div>
        </div>
      </xml>);

    feat <- Template.cellsBy3 box (
          (mkcell
            <xml>
              <h4>Features related to the current product</h4>
              <img src={Whytopor1_gif.geturl}/>
              <p class={designnote}>
                Basically, the image, some text, and 'Learn more' link. 'Learn more' link points to the page
                whith an article
              </p> 
              {learnmore (s.Main)}
            </xml>) ::
          (mkcell
            <xml>
              <h4>PCB design time reduced up to several times</h4>
              <img src={Whytopor1_gif.geturl}/>
              <p>
                TopoR topological router is distinguished by having no preferred routing
                directions, which are divisible by 45 degrees. Any-angle routing ensures more
                efficient space usage.
              </p> 
              {learnmore (s.Main)}
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
              {learnmore (s.Main)}
            </xml>) ::
          (mkcell
            <xml>
              <h4>Improved electro-magnetic compatibility</h4>
              <img src={Whytopor3_gif.geturl}/>
              TopoR allows to avoid wire parallelism reducing electromagnetic crosstalks.
              {learnmore (s.Main)}
            </xml>) ::
          (mkcell
            <xml>
              <h4>Design of complex and high-speed PCBs</h4>
              <img src={Whytopor4_gif.geturl}/>
              TopoR ensures full support for complex and high-speed PCBs design. 
              {learnmore (s.Main)}
            </xml>) ::
          []);

    tabcont <- tabs (
        (mktab s2 "Features" <xml>{feat}</xml>) :: 
        (mktab s2 "FAQ" 
        <xml>
          <div>
            <h4>Introduction to TopoR and first steps</h4>
            <p>
              We will keep constantly updating the Frequently Asked Questions section of the
              website. If you did not find the answers to your questions in this section,
              please feel free to
              <a href={s.Main}>contact us</a>
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
              <a href={s.Main}>here</a>
              .
            </p>
            <h5>
              You can also find our video tutorials in the
              <a href={s.Main}>Tutorials section</a>
              .
            </h5>
            <p>
              We can also provide training for more efficient insight on our product. For more
              details on trainings please
              <a href={s.Main}>contact us</a>
              .
            </p>
            <h5>
              What support options will I receive after purchasing any version of TopoR?
            </h5>
            <p>
              You will receive all updates and support for free during the first year after
              the product purchase. The support period can be prolonged. For additional
              support conditions please
              <a href={s.Main}>refer to us</a>
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
          </xml>)  ::
        ( mktab s2 "Screenshots" <xml>Custom page aka gallery</xml>) ::
        ( mktab s2 "Downloads" <xml>List of downloadable items</xml>) ::
        ( mktab s2 "Feedback" <xml>The feedback form</xml>) ::
        []);

    return
      <xml>
        {caption}
        {tabcont}
        {demo s.Main}
      </xml>
  )

and learn1 s = 
  ptempl s (fn tabs =>
    return
     <xml>
        <h1>PCB design time reduction</h1>
        <h2>TopoR allows to reduce design time up to several times</h2>
        <h3>«Instant routing» of 100% of wires on a board</h3>
        <p>
          TopoR provides 100% routed layout almost instantly within a few seconds. All
          connections are routed even if technological constraints are violated.
          Autorouting is followed by the multiobjective optimization by calculating
          different variants of laying wires. During the optimization process the overall
          wire length is optimized as well as the number of vias and places with smaller
          clearance.&nbsp;
        </p>
        <p>
          The routing process can be stopped at any moment, and the engineer can
          immediately define the technical possibility of routing the board within the
          limits of the specified number of layers, defined clearance size and other
          technical limitations based on the routing density and the amount of technical
          constraints violations. This helps to avoid waiting for many hours which is
          typical for the traditional autorouters. Engineers using the traditional systems
          can spend significant amount of their time trying to get the suitable results
          for different variants of routing strategy.
        </p>
        <h3>
          TopoR is capable of performing parallel computing, speeding up the result
          achievement by many times
        </h3>
        <p>
          TopoR can perform parallel optimization of several alternative topology
          variants, which differ in optimized parameters, while a user is offered a choice
          of selecting one or several variants. This feature allows for organizing the
          distributed routing – parallel topology optimization by using several processor
          cores and/or several computers within one local network. This allows to
          significantly reduce machine time especially for routing complex multi-layer
          boards.
        </p>
        <h3>
          The innovative topology router significantly increases engineers' productivity
        </h3>
        <p>
          TopoR support two types of manual topology routing of PCBs – graphical and
          topological. Topology router automatically calculates the optimal shape and wire
          positioning in terms of the defined topology. This allows engineers to
          concentrate on the topological aspects of design without paying attention to the
          wires shape and observing technological restrictions. Touching or even number or
          wires intersections is not considered a violation. It is sufficient to push a
          button and move to the topological mode to “string” the wires automatically and
          move them to the necessary distance.
        </p>
        <p>Topology fragment:</p>
        <p>
          a) Touching or even number or wires intersections is not considered a violation;
        </p>
        <p>
          b) With a push of a button the wires automatically “strung” and moved to the
          necessary distance;
        </p>
        <p>
          One of the unique features of TopoR is its capability to move components on the
          routed board while preserving the connections topology. Geometry&nbsp; and
          positioning of components are automatically calculated to comply with the new
          components position.
        </p>
        <p/>
        <p>
          <strong><em>PCB fragment before and after moving a capacitor.</em></strong>
        </p>
        <p>
          Movement of components, vias and wire branching is used to decrease wires
          length, provide the utmost clearance space which should be not less than
          required (to eliminate the narrow spaces). Movement can be performed both
          manually and automatically, and the most effective wires shape is defined
          immediately. &nbsp;
        </p>
        <p>
          During the automatic movement of the board components, the wires branching
          points and vias are set to optimal positions.
        </p>
        <p>
          All this significantly simplifies and speeds up the routing process, allowing to
          avoid necessity of constantly observing technical limitations.
        </p>
        <div>
          <p>
            “One of our boards has been routed by a qualified engineer for 2 weeks. In order
            to study the capabilities of TopoR CAD system we passed this task to Eremex
            specialists and were impressed to learn that they have done this job within an
            hour. Moreover the majority of work was done by automatic routing with minor
            manual corrections. However the routing quality was better then the quality of
            our variant.”
            <p>- Our Customer.</p>
          </p>
        </div>
        <p>
          The board routed by TopoR within an hour (20 min for autorouting and 40 min for
          manual routing). The number of vias - 432. Trace length –5,11м.
        </p>
      </xml> 
  )

