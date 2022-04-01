window.addEventListener("load", function(){

  const notyf = new Notyf({
    duration: 6000,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let answer_market_3 = document.getElementById("answer_market_3");
  let answer_market_4 = document.getElementById("answer_market_4");
  let params_answer_market_3 = document.getElementById("params_answer_market_3").textContent;
  let params_answer_market_4 = document.getElementById("params_answer_market_4").textContent;

  if (params_answer_market_3 == []){
    answer_market_3.value = "50";
    document.getElementById("sizemarket").textContent = answer_market_3.value;
  }else{
    answer_market_3.value = params_answer_market_3;
    if (answer_market_3.value == "100"){
      document.getElementById("sizemarket").textContent = "+ 100";
      document.getElementById("millions").textContent = " Millions d'euros";
    }else if (answer_market_3.value == "0"){
      document.getElementById("sizemarket").textContent = "";
      document.getElementById("millions").textContent = "Dimension du marché inconnu";
    }else{
      document.getElementById("sizemarket").textContent = answer_market_3.value;
      document.getElementById("millions").textContent = " Millions d'euros";
    };
  };

  if (params_answer_market_4 == []){
    answer_market_4.value = "50";
    document.getElementById("target").textContent = answer_market_4.value;
  }else{
    answer_market_4.value = params_answer_market_4;
    document.getElementById("target").textContent = answer_market_4.value;
  };


  answer_market_3.addEventListener("change", function() {
    if (answer_market_3.value == "100"){
      document.getElementById("sizemarket").textContent = "+ 100";
      document.getElementById("millions").textContent = " Millions d'euros";
    }else if (answer_market_3.value == "0"){
      document.getElementById("sizemarket").textContent = "";
      document.getElementById("millions").textContent = "Dimension du marché inconnu";
    }else{
      document.getElementById("sizemarket").textContent = answer_market_3.value;
      document.getElementById("millions").textContent = " Millions d'euros";
    };
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
