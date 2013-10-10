

style columnlist
style download
style info
style work
style button
style news

fun gennews {} : transaction xbody = 
  ThreeColumns.threecols
    (return
      <xml>
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
      </xml>
    )

    (return
      <xml>
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
          <dt><a link={main {}}>Software main</a></dt>
          <dd class={info}>
            A Pulsonix main contract represents the most cost effective way of
            ensuring you and your engineering teams have access to all the assistance needed
            to keep you operating efficiently and effectively.
            <a link={main {}}>Read more</a>
            about the benefits of a main contract.
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
      </xml>
    )
     
    (return 
      <xml>
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
      </xml>
    )

and topor {} = Template.template

and main {} = Template.template (gennews {})


