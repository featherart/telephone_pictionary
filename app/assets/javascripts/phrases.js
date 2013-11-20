$form = $("#new_phrase");

console.log("here's form: " + $form.length);

$form.on("submit", function(event) {
	console.log("in submit");
	console.log(event);
    event.preventDefault();

    $.post(form.attr('action'), form.serialize(), function (data) {
		$("#new_phrases").prepend(data);
	});
});