
function mm2_init__unit(css_class) {
  jQuery("." + css_class).megamenu({
                              activate_action: "mouseover",
                              deactivate_action: "mouseleave",
                              show_method: "slideDown",
                              hide_method: "slideUp",
                              justify: "left",
                              enable_js_shadow: false,
                              shadow_size: 3,
                              mm_timeout: 50
                          });
}

