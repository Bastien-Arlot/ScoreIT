window.addEventListener("load", function(){

  const notyf = new Notyf({
    duration: 6000,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let answer_market_4 = document.getElementById("answer_market_4");
  let answer_market_3 = document.getElementById("answer_market_3");

  window.addEventListener("load", function() {
      answer_market_3.value = "50";
      answer_market_4.value = "50";
    });

    answer_market_3.addEventListener("change", function() {
    if (answer_market_3.value == "100"){
        document.getElementById("sizemarket").textContent = "+ 100";
    }else{
        document.getElementById("sizemarket").textContent = answer_market_3.value;
    }
  }, false);

  answer_market_4.addEventListener("change", function() {
      document.getElementById("target").textContent = answer_market_4.value;
  }, false);


  let error_market = document.getElementById("error_message_market");
  let answer_market = [];

  if (error_market.textContent !== []){
    answer_market = error_market.textContent.split(',');
    answer_market.forEach(element => {
      for (let i = 1; i < 9; i++){
        if (element.includes(`market ${i}`)){
              notyf.error({
                  message: `Merci de répondre à la question n°${i}`,
                  dismissible: true
                  });
            };
      };
    });
  };

});
