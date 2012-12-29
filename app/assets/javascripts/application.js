// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).on('keyup', function (e) {
  if (e.keyCode == 39) {
    var href = $('a[rel="next"]').attr('href');
    if (href) {
      window.location = href;
    }
  } else if (e.keyCode == 37) {
    var href = $('a[rel="previous"]').attr('href');
    if (href) {
      window.location = href;
    }
  }
});
