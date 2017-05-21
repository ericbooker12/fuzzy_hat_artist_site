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
		var dom = "markeinert"
		var user = 'hello';

		var subject = "Your artwork is beautiful!";
		// var emailBody = "Hi Mark, \r\nI really like your artwork and would like to inquire about purchasing some of your pieces.";
		document.location = "mailto:"+ user +  at + dom + ending + "?subject="+subject;
	});
})
