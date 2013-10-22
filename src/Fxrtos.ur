style news

val box = Template.box
val designnote = Template.designnote
val template = Template.template
val mktab = RespTabs.mktab
val mkcell = Template.mkcell
val mkcrumb = Template.mkcrumb
val addcrumb = Template.addcrumb
type crumb = Template.crumb
val btn = classes (classes Bootstrap.btn Bootstrap.btn_large) Bootstrap.btn_success

fun learnmore (u : url) : xbody =
  <xml><p><a href={u}>Learn more &raquo;</a></p></xml>

fun demo (u:url) : xbody = <xml>
  <div style="text-align:center;margin:20px;">
    <h2> Need more convincing? </h2>
    <div style="margin:20px">Try out FX-RTOS yourself!</div> 
    <a class={btn} href={u}>Get started with FX-RTOS &raquo;</a>
  </div>
  </xml>

fun product (h:Template.handlers) (s:Template.settings) (s2:string) =
  let
    val toMain = h.Main h.Lang
  in
  ptempl h s (fn tabs =>
    caption <- (return
      <xml>
        <div class={Bootstrap.row_fluid}>
          <h2 class={Bootstrap.lead}>
            FX-RTOS — real-time operating system for embedded applications
          </h2> 
          <div style="width:100%;text-align:center;">
            <img style="width:94%" src={Banner2_png.geturl}/>
          </div>
          <div style="margin:10px">
            <p class={designnote}>Here comes the marketing info, like slogan or something. For example:</p>
             <ul>
                <li>
                  Component architecture without mandatory elements. Unused components are not
                  included into the target image
                </li>
                <li>Symmetric multiprocessing is supported</li>
                <li>
                  The system scales down to simple preemptive event handlers without full-fledged
                  threads
                </li>
                <li>
                  The operating system is configurable using dependency injection technique.
                </li>
                <li>Reusable components can be combined in various configurations.</li>
                <li>
                  Various scheduling policies are supported (priority-based, FIFO, round-robin and
                  their combinations)
                </li>
                <li>Extensibility with user-defined components.</li>
                <li>Effective interrupt handling.</li>
                <li>Easy cross-platform portability.</li>
                <li>POSIX support (optional).</li>
                <li>Cross-platform utilities for configuring and building the OS.</li>
                <li>Source code is provided.</li>
              </ul> 
          </div>
        </div>
      </xml>);

    feat <- Template.cellsBy3 box (
          (mkcell
            <xml>
              <h4>Component-based architecture</h4>
              <img src={Whyrtos1_jpg.geturl}/>
              <p>
                FX-RTOS is a set of loosely coupled software components. Dependencies between them are created as a result of configuring.
              </p> 
              {learnmore (toMain)}
            </xml>) ::
          (mkcell
            <xml>
              <h4>Сonfigurability</h4>
              <img src={Whyrtos2_jpg.geturl}/>
              <p>
                The OS is configurable using dependency injection technique. Configuring is performed at compile-time, so resulting machine code is almost optimal and doesn't contain any overhead.
              </p> 
              {learnmore (toMain)}
            </xml>) ::
          (mkcell
            <xml>
              <h4>Multiprocessing support</h4>
              <img src={Whyrtos3_jpg.geturl}/>
              <p>
                FX-RTOS was initially designed with multiprocessing in mind. Thus, the amount of global variables shared between processors is reduced to minimum, there are no global system-wide locks. Therefore, the system performance scales well with number of processors.
              </p>
              {learnmore (toMain)}
            </xml>) ::
          (mkcell
            <xml>
              <h4>Special support for event driven systems</h4>
              <img src={Whyrtos4_jpg.geturl}/>
              <p>
                Special profile for such systems is provided. Threads are removed and replaced with event service routines (ESR) similar in some aspects to program interrupts. Using ESR instead of threads reduces code size by 40%, increases performance and reduces RAM usage (in contrast with threads, ESR may share a single stack).
              </p>
              {learnmore (toMain)}
            </xml>) ::
          (mkcell
            <xml>
              <h4>Extensibility</h4>
              <img src={Whyrtos5_jpg.geturl}/>
              <p>
                As several implementations of a single component interface are allowed, the kernel functionality may be extended or modified with components, developed by OS user or community.
              </p>
              {learnmore (toMain)}
            </xml>) ::
          []);

    tabcont <- tabs (
        (mktab s2 "Features"
        <xml>
          {feat}
          {demo toMain}
        </xml>) :: 
        (mktab s2 "FAQ" 
        <xml>
          <div>
            <h4>Introduction to TopoR and first steps</h4>
            <p>
              We will keep constantly updating the Frequently Asked Questions section of the
              website. If you did not find the answers to your questions in this section,
              please feel free to
              <a href={toMain}>contact us</a>
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
              <a href={toMain}>here</a>
              .
            </p>
            <h5>
              You can also find our video tutorials in the
              <a href={toMain}>Tutorials section</a>
              .
            </h5>
            <p>
              We can also provide training for more efficient insight on our product. For more
              details on trainings please
              <a href={toMain}>contact us</a>
              .
            </p>
            <h5>
              What support options will I receive after purchasing any version of TopoR?
            </h5>
            <p>
              You will receive all updates and support for free during the first year after
              the product purchase. The support period can be prolonged. For additional
              support conditions please
              <a href={toMain}>refer to us</a>
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
      </xml>
  )
  end

and learn1 h s =
  let
    val s' = addcrumb (learn1 h s) "Learn1" s
  in
    ptempl h s' (fn tabs =>
      return
      <xml>
         <h1>Feature List</h1>
         <h2>Component architecture</h2>
         <p>
           FX-RTOS is not a monolithic program. It defines a set of loosely coupled
           components for building your own OS. Configuration utility analyses components
           dependencies and builds an image (library) that exactly matches application
           needs without any extra overhead.
         </p>
         <p>
           Multiple implementations of a single component interface are allowed. An
           appropriate implementation may be chosen during configuration to fit application
           system requirements. Some of the components may be used separately, without the
           OS itself.
         </p>
         <p>
           Configuration process relays on special dependency injection technique. A
           component source code is not affected by configuring the OS.
         </p>
         <p>
           Configuring is performed at compile time, so resulting machine code is almost
           optimal.
         </p>
         <h2>Multiprocessor support</h2>
         <p>
           FX-RTOS was initially designed with multiprocessing in mind. Thus, the amount of
           global variables shared between processors is reduced to minimum, there are no
           global system-wide locks. Therefore, the system performance scales well with
           number of processors.
         </p>
         <p>
           For multiprocessor case specially designed components are used, so it does not
           affect performance of uniprocessor systems.
         </p>
         <h2>Special support for simple event driven systems</h2>
         <p>
           Many embedded systems are event-driven and may be represented as a set of event
           handlers. A handler, if already running, never waits. Such systems may be
           implemented with threads, but threads are too heavyweight and have redundant
           functionality that isn’t used in this simple case.
         </p>
         <p>
           FX-RTOS provides a special profile for such systems. Threads are removed and
           replaced with event service routines (ESR) similar in some aspects to program
           interrupts. Using ESR instead of threads reduces code size by 40%, increases
           performance and reduces RAM usage (in contrast with threads, ESR may share a
           single stack)
         </p>
         <h2>Extensibility</h2>
         <p>
           As several implementations of a single component interface are allowed, the
           kernel functionality may be extended or modified with components, developed by
           OS user or community.
         </p>
         <h2>Effective interrupt handling</h2>
         <p>FX-RTOS supports several techniques facilitating interrupt handling:</p>
         <ol>
           <li>interrupt service routines (ISR)</li>
           <li>deferred procedure call, DPC</li>
           <li>threads (interrupt service threads, IST)</li>
           <li>event service routines (ESR)</li>
         </ol>
         <p>
           By configuring the OS, the system designer may decide to include an appropriate
           combination of these facilities into the target system depending on preferred
           application design principles and requirements. Interrupt handlers (ISR) run on
           special interrupt stack (this reduces stack size should be reserved for
           threads).
         </p>
       </xml> 
    )
  end

and ptempl (h:Template.handlers) (s:Template.settings) (f:RespTabs.tabs -> transaction xbody) : transaction page =
  let
    val s' = addcrumb (product h s "") "FX-RTOS" s
    val toMain = h.Main h.Lang
    val toProduct = h.Product h.Lang "FX-RTOS" ""
  in
    template h s' (fn tabs =>
      news <- (Template.cellsBy1 news (
        (mkcell
          <xml>
            <a href={toProduct}>
            <img src={Logo_rtos_png.geturl}/>
            </a>
            <dl>
              <dt>Quick start</dt>
              <dd><a href={toMain}>Tutorial</a></dd>
              <dd><a href={toMain}>Download</a></dd>

              <dt>Learn more</dt>
              <dd><a link={learn1 h s}>Feature list</a></dd>
              <dd><a href={toMain}>Full manual</a></dd>
              <dd><a link={learn1 h s}>Supported hardware</a></dd>
            </dl>
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
  end

