// ここからロボット１
$(function() {
  $(".robot-left-p").fadeIn(1500);
  $(".robot1").fadeIn(3000);
});

$(function(){
  $('#modal-robot1').click(function(){
    $('#ruby-modal').fadeIn(3000);
    $('#ruby-modal').fadeOut(8000);
  });
});

$(function(){
  $('#omiup').click(function(){
    $('#omi-btn').fadeIn();
  });
});

// {
//   const btn = document.getElementById('btn');

//   btn.addEventListener('click', () => {
//     const results = ['大吉', '中吉', '凶', '末吉'];
    // const n = Math.floor(Math.random() * results.length);
    // btn.textContent = results[n];
    // btn.textContent = results[Math.floor(Math.random() * results.length)];

    // switch (n) {
    //   case 0:
    //     btn.textContent = '大吉';
    //     break;
    //   case 1:
    //     btn.textContent = '中吉';
    //     break;
    //   case 2:
    //     btn.textContent = '凶';
    //     break;
    // }
//   });
// }

// ここからロボット４
$(function(){
  $('#robot5').hover(
    function(){
      $('#robot4').fadeIn();
    },
    function(){
      $('#robot4').fadeOut();
    }
  );
});

$(function(){
  $('#robot4up').click(function(){
    $('#robot6').fadeIn();
  });
});

$(function(){
  $('#frog-button').click(function(){
    $('#robot-frog1').fadeIn(1500);
  });
});

$(function () {
  $('#frog-button2').click(function () {
    $('#robot-frog2').fadeIn(3000);
    $('#robot-frog2').fadeOut(12000);
  });
});


$(function(){
  $('#robotup').click(function(){
    $('#robot7').fadeIn(5000);
    $('#robot7').fadeOut(10000);
  });
});

$(function(){
  $('#train-up').click(function(){
    $('#robot-right-box').fadeOut(1500);
    $('#robot-train').fadeIn(3000);
    $('#robot-train').fadeOut(6000);
    $('#robot-right-box').fadeIn(9000);
  });
});

$(function(){
  $('#watermark-up').click(function(){
    $('#watermark').fadeIn(3000);
    $('#watermark').fadeOut(12000);
  });
});