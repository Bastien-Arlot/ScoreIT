window.addEventListener("load", function(){

  const notyf = new Notyf({
    duration: 6000,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let answer_finance_1 = document.getElementById("answer_finance_1");
  let params_answer_finance_1 = document.getElementById("params_answer_finance_1").textContent;

  if (params_answer_finance_1 == []){
    answer_finance_1.value = "50";
    document.getElementById("sizefinance").textContent = answer_finance_1.value;
  }else{
    answer_finance_1.value = params_answer_finance_1;
    if (answer_finance_1.value == "100"){
      document.getElementById("sizefinance").textContent = "+ 10 0";
      document.getElementById("p1").textContent = "00€";
    }else if (answer_finance_1.value == "0"){
      document.getElementById("sizefinance").textContent = "";
      document.getElementById("p1").textContent = "Capital social inférieur à 100€";
    }else{
      document.getElementById("sizefinance").textContent = answer_finance_1.value;
      document.getElementById("p1").textContent = "00€";
    };
  };

  answer_finance_1.addEventListener("change", function() {
    if (answer_finance_1.value == "100"){
      document.getElementById("sizefinance").textContent = "+ 10 0";
      document.getElementById("p1").textContent = "00€";
    }else if (answer_finance_1.value == "0"){
      document.getElementById("sizefinance").textContent = "";
      document.getElementById("p1").textContent = "Capital social inférieur à 100€";
    }else{
      document.getElementById("sizefinance").textContent = answer_finance_1.value;
      document.getElementById("p1").textContent = "00€";
    };
  }, false);


  let error_finance = document.getElementById("error_message_finance");
  let answer_finance = [];

  if (error_finance.textContent !== []){
    answer_finance = error_finance.textContent.split(',');

    answer_finance.forEach(element => {
      for (let i = 1; i < 6; i++){
        if (element.includes(`finance ${i}`)){
          notyf.error({
            message: `Merci de répondre à la question n°${i}`,
            dismissible: true
          });
        };
      };
    });
  };

});
