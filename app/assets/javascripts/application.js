// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

  skrollr.init();
  new WOW().init();
  // $('.owl-carousel').owlCarousel({
  //     animateOut: 'fadeOut',
  //     autoHeight:true,
  //     items:1,
  //     loop: true,
  //     autoplay: true,
  //     autoplaySpeed: 1500,
  //     margin:0,
  //     stagePadding:0,
  //     nav: false,
  //     smartSpeed:0

  // });

  $( "#new-inbound-form" ).submit(function( event ) {
    $.ajax({
      type: "POST",
      url: $('#new-inbound-form').attr('action'),
      data: $('#new-inbound-form').serialize(),
      success: function(data){
        $('#new-inbound-form #email').val("")
        $('#new-inbound-form #name').val("")
        $('#new-inbound-form #message').val("")
        $('#inbound-form-errors').hide()
        $('#inbound-form-confirm').show()
      },
      error: function(data){
        $('#inbound-form-errors').show()
      }
    });
    return false
  })
})
