// ここからロボット１
$(function() {
  $(".robot-left-p").fadeIn(1500);
  $(".robot1").fadeIn(3000);
});

// 'use strict';

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
  });
});


$(function(){
  $('#robotup').click(function(){
    $('#robot7').fadeIn(5000);
  });
});