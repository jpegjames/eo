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
// 
// Vendor
//= require FlipClock-master-2/compiled/flipclock.min.js
//= require jquery.loadTemplate.min.js


$(document).on('click', '.fa.fa-heart-o', function() {
  $(this).removeClass('fa-heart-o').addClass('fa-heart');
})

$(document).on('click', '.fa.fa-heart', function() {
  $(this).removeClass('fa-heart').addClass('fa-heart-o');
})