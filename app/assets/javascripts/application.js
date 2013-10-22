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
//= require easyslider
// require_tree .

$(document).ready(function() {
  // Store variables

  var accordion_head = $('.nav_left > li > a'),
accordion_body = $('.nav_left li > .sub-menu');

// Open the first tab on load

accordion_head.first().addClass('active').next().slideDown('normal');

// Click function

accordion_head.on('mouseover', function(event) {

  // Disable header links

  event.preventDefault();

  // Show and hide the tabs on click

  if ($(this).attr('class') != 'active'){
    accordion_body.slideUp('normal');
    $(this).next().stop(true,true).slideToggle('normal');
    accordion_head.removeClass('active');
    $(this).addClass('active');
  }

});

  $("#slider").easySlider({
    auto: true,
    numeric: true,
    continuous: true
  });

});
