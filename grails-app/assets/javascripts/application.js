// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
		
		//sunjh add at 20181028
		function changeDocLink(){
			$(".doc_link_type").each(function(index){
				$( this ).attr("href","a/?type="+encodeURIComponent($( this ).text().trim()));
			});
		}
		//sunjh add at 2018909
		$(document).ready(function(){
			$(".nav .home").attr("href",$(".nav .home").attr("href")+"admin");
			changeDocLink();
		});
		
		
	})(jQuery);
}
