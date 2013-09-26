
style cmenu

fun main {} = Page.runPage (
  Menu_jq.add cmenu (
  Page.bdy (
    return
      <xml>
        <body>
          <ul class={cmenu}>
            <li>
              <a link={main {}}>О компании</a>
              <ul>
                <li><a link={main {}}>blabla2</a></li>
                <li><a link={main {}}>blabla2</a></li>
                <li><a link={main {}}>blabla2</a></li>
              </ul>
            </li>
            <li>
              <a link={main {}}>История</a>
              <ul>
                <li><a link={main {}}>blabla2</a></li>
                <li><a link={main {}}>blabla2</a></li>
                <li><a link={main {}}>blabla2</a></li>
              </ul>
            </li>
          </ul>
        </body>
      </xml> 
  )))

