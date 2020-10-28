$(function () {
  var INDEX = 0;
  $("#chat-submit").click(function (e) {
    e.preventDefault();
    var msg = $("#chat-input").val();
    if (msg.trim() == '') {
      return false;
    }
    sendMessage();
  });
  talking = true;
  var ws = new WebSocket('ws://localhost:8081');

  ws.addEventListener("message", function (e) {
    var msg = e.data;
    setTimeout(function () {
      generate_message(msg, 'user');
      Speech(msg)
    }, 1000)
  });

  function sendMessage() {
    var message = document.getElementById('chat-input').value;
    ws.send(message);
    generate_message(message, 'self');
  }

  function Speech(say) {
    if ('speechSynthesis' in window && talking) {
      var utterance = new SpeechSynthesisUtterance(say);
      speechSynthesis.speak(utterance);
    }
  }

  function keyPress(e) {
    var x = e || window.event;
    var key = (x.keyCode || x.which);
    if (key == 13 || key == 3) {
      sendMessage();
    }
    if (key == 38) {
      console.log('hi')
    }
  }

  function generate_message(msg, type) {
    INDEX++;
    var str = "";
    str += "<div id='cm-msg-" + INDEX + "' class=\"chat-msg " + type + "\">";
    str += "          <div class=\"cm-msg-text\">";
    str += msg;
    str += "          <\/div>";
    str += "        <\/div>";
    $(".chat-logs").append(str);
    $("#cm-msg-" + INDEX).hide().fadeIn(300);
    if (type == 'self') {
      $("#chat-input").val('');
    }
    $(".chat-logs").stop().animate({
      scrollTop: $(".chat-logs")[0].scrollHeight
    }, 1000);
  }

  $(document).delegate(".chat-btn", "click", function () {
    var value = $(this).attr("chat-value");
    var name = $(this).html();
    $("#chat-input").attr("disabled", false);
    generate_message(name, 'self');
  })

  $("#chat-circle").click(function () {
    $("#chat-circle").toggle('scale');
    $(".chat-box").toggle('scale');
  })

  $(".chat-box-toggle").click(function () {
    $("#chat-circle").toggle('scale');
    $(".chat-box").toggle('scale');
  })

})