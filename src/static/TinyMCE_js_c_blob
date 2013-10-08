var type_as_tmce_imglist;

function imglist_new__tmce_imglist( unit ) { return []; }

function imglist_insert__tmce_imglist(string, url, tmce_imglist) {

  return tmce_imglist.concat([{title:string, value:url}]);
}

function tmce_init__unit(css_class, tmce_imglist) {

  tinymce.init({
    selector: "." + css_class,
    plugins: "image table media anchor code",
    tools: "inserttable",
    image_list: tmce_imglist,
    image_advtab : true
  });

}

