$(function() {
    $canvas = $("#new_picture");
    $canvas.hide();
    $form = $("#new_phrase");
    console.log("here's form: " + $form.length);

    $form.on("submit", function(event) {
        event.preventDefault();
        
        $turn = $("input[name=phrase_turn").val();
        console.log("here's turn again:  " + $turn);
        var phrase = $("#phrase_text").val();
        console.log(phrase);
    $.ajax({
       url: "/",
       type: "POST",
       data: {
         text: phrase
       },
       success: function( data ) {
         console.log("success");
         $form.hide();
         $("#new_phrases").prepend("<li>"+phrase+"</li>");
         $canvas.toggle();
       }
     });    
    });
  
 });