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

		var subject = "Contact from website";
		document.location.href = "mailto:"+ user +  at + dom + ending + "?subject="+subject;
	});

	$(document).on('click',function(e){
    $('.collapse').collapse('hide');
	})

})
