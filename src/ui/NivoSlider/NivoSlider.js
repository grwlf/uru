
function nivo_init(
    css,
    theme__css_class,
    ribbon__css_class,
    arrows__url,
    bullets__url,
    loading__url) {

  $(window).load(function() {
    $('.' + css ).nivoSlider({
      effect: 'random',               // Specify sets like: 'fold,fade,sliceDown'
      slices: 15,                     // For slice animations
      boxCols: 8,                     // For box animations
      boxRows: 4,                     // For box animations
      animSpeed: 500,                 // Slide transition speed
      pauseTime: 3000,                // How long each slide will show
      startSlide: 0,                  // Set starting Slide (0 index)
      directionNav: true,             // Next & Prev navigation
      controlNav: true,               // 1,2,3... navigation
      controlNavThumbs: false,        // Use thumbnails for Control Nav
      pauseOnHover: true,             // Stop animation while hovering
      manualAdvance: false,           // Force manual transitions
      prevText: 'Prev',               // Prev directionNav text
      nextText: 'Next',               // Next directionNav text
      randomStart: false,             // Start on a random slide
      beforeChange: function(){},     // Triggers before a slide transition
      afterChange: function(){},      // Triggers after a slide transition
      slideshowEnd: function(){},     // Triggers after all slides have been shown
      lastSlide: function(){},        // Triggers when last slide is shown
      afterLoad: function(){}         // Triggers when slider has loaded
    });

    $('.' + theme__css_class).attr('class', 'slider-wrapper theme-default');
    $('.' + ribbon__css_class).attr('class', 'ribbon');

    // Doesn't work properly: nivo performs some manipulation with images after loading
    // $('.theme-default .nivoSlider').css('background','#fff url('+loading__url+') no-repeat 50% 50%');
    // $('.theme-default .nivo-controlNav a').css('background','url('+ bullets__url +') no-repeat');
    // $('.theme-default .nivo-directionNav a').css('background','url('+ arrows__url +') no-repeat');

  });
}

