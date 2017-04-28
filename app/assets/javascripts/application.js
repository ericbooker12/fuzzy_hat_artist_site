// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets

$(document).ready(function(){

	$('.contact-artist').click(function (e) {
		e.preventDefault();
		var at = '@'
		var ending = ".com"
		var dom = "bop"
		var user = 'be';

		var subject = "Want to learn more";
		var emailBody = "Hi Mark, \r\nI really like your artwork and would like to inquire about purchasing some of your pieces.";

		document.location = "mailto:"+ user +  at + dom + ending + "?subject="+subject+"&body="+emailBody;
	});

})