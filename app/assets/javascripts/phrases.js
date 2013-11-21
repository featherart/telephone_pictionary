$(function() {
	$form = $("#new_phrase");

	console.log("here's form: " + $form.length);

	$form.on("submit", function(event) {
		event.preventDefault();
	
		var phrase = $("#phrase_text").val();
		console.log(phrase);
	   

	    $.post($form.attr('action'), $form.serialize(), function (data) {
	    	//console.log("in post: " +data);
			$("#new_phrases").prepend(phrase);
			$("#new_phrases").append("<h1>phrase</h1>");
		});
	});
});