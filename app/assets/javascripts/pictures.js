$(function() {
  var $canvas = $("#drawing");
  if($canvas.length == 0) {
    return;
  }
  var $clear = $("#clear"),
      $form = $("#new_drawing"),
      $hidden = $("#drawing_image"),
      button_is_down = false,
      context = $canvas[0].getContext('2d');

  console.log("here's form: " +$form);

  $(document).mouseup(function(e) {
    if(button_is_down) {
      var x = e.pageX - this.offsetLeft,
          y = e.pageY - this.offsetTop;
      context.lineTo(x,y);
      context.stroke();
    }
    button_is_down = false;
    $('body').removeClass('noselect');
  });

  $canvas.mousedown(function(e) {
    var x = e.pageX - this.offsetLeft,
        y = e.pageY - this.offsetTop;
    context.beginPath();
    context.moveTo(x,y);
    $('body').addClass('noselect');
    button_is_down = true;
  });

  $(document).mousemove(function(e) {
    if(button_is_down) {
      var x = e.pageX - $canvas[0].offsetLeft,
          y = e.pageY - $canvas[0].offsetTop;
      context.lineTo(x,y);
      context.stroke();
    }
  });

  // this is where the data gets sent
  // but it's returning a 406 and not entering this function
  $form.on("submit", function(event) {
    console.log("hello");
    event.preventDefault();

    var url = $canvas[0].toDataURL('image/png'),
        img = document.createElement('img'),
        drawings_target = $('#drawings_target');
    console.log("url: "+url);
    drawings_target.append(img); 
    img.src = url;
    $hidden.val(url);

    $.post($form.attr('action'), $form.serialize(), function(data) {
        console.log("data: " + data);
        $("#new_drawings").append("hello");
      });
  });
  function clearCanvas() {
    context.clearRect(0,0,$canvas.width(),$canvas.height());   
  }

  $clear.click(clearCanvas);
  clearCanvas();


});
