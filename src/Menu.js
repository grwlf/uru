
function init__unit(css_class) {
  var selector = "." + css_class + " ul li"
  
  $(selector).hover(

      function() {
          $(this).addClass("active");
          $(this).find('ul').stop(true, true);
          $(this).find('ul').slideDown();
      },

      function() {
          $(this).removeClass("active");       
          $(this).find('ul').slideUp('fast');
      }

  );

}

