window.addEventListener("load", function(){

  const notyf = new Notyf({
    duration: 6000,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let y = document.getElementById("answer_innovation_3");

  let params_answer_innovation_3 = document.getElementById("params_answer_innovation_3").textContent;

  if (params_answer_innovation_3 == []){
    y.value = "50";
    document.getElementById("sizeinnovation").textContent = y.value;
  }else{
    y.value = params_answer_innovation_3;
    if (y.value == "100"){
      document.getElementById("sizeinnovation").textContent = "+ 100";
      document.getElementById("p3").textContent = " 000€";
    }else if (y.value == "0"){
      document.getElementById("sizeinnovation").textContent = "";
      document.getElementById("p3").textContent = "Pas d'investissement en R&D";
    }else{
      document.getElementById("sizeinnovation").textContent = y.value;
      document.getElementById("p3").textContent = " 000€";
    };
  };

  y.addEventListener("change", function() {
    if (y.value == "100"){
      document.getElementById("sizeinnovation").textContent = "+ 100";
      document.getElementById("p3").textContent = " 000€";
    }else if (y.value == "0"){
      document.getElementById("sizeinnovation").textContent = "";
      document.getElementById("p3").textContent = "Pas d'investissement en R&D";
    }else{
      document.getElementById("sizeinnovation").textContent = y.value;
      document.getElementById("p3").textContent = " 000€";
    };
  }, false);

  let error_innovation = document.getElementById("error_message_innovation");
  let answer_innovation = [];

  if (error_innovation.textContent !== []){
    answer_innovation = error_innovation.textContent.split(',');
    answer_innovation.forEach(element => {
      for (let i = 1; i < 8; i++){
        if (element.includes(`innovation ${i}`)){
          notyf.error({
            message: `Merci de répondre à la question n°${i}`,
            dismissible: true
          });
        };
      };
    });
  };

});
