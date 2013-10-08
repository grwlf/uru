
function pkch_init__unit(css_class) {
  $("." + css_class).PikaChoose({showTooltips:true});
}

var pkch_style;

function pkch_style__unit(width__int, height__int) {

    if(typeof pkch_style == 'undefined') {
        var append = true;
        pkch_style = document.createElement('style');
    } else {
        while (pkch_style.hasChildNodes()) {
            pkch_style.removeChild(pkch_style.firstChild);
        }
    }
    var head = document.getElementsByTagName('head')[0];
    var rules = document.createTextNode(
        '.pika-stage {'
      + '  position: relative; '
      + '  width: ' + width__int + 'px; '
      + '  height:' + height__int + 'px;'
      + '  -moz-box-shadow: 10px 10px 5px #888;'
      + '  -webkit-box-shadow: 10px 10px 5px #888;'
      + '  box-shadow: 10px 10px 5px #888; '
      + '  border:2px solid black;'
      + '}'
    );

    pkch_style.type = 'text/css';
    if(pkch_style.styleSheet) {
        pkch_style.styleSheet.cssText = rules.nodeValue;
    } else {
        pkch_style.appendChild(rules);
    }
    if(append === true)
      head.appendChild(pkch_style);
}

