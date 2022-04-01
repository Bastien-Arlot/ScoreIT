window.addEventListener("load", function(){

  const notyf = new Notyf({
    duration: 6000,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let answer_offer_2 = document.getElementById("answer_offer_2");
  let answer_offer_3 = document.getElementById("answer_offer_3");
  let answer_offer_4 = document.getElementById("answer_offer_4");
  let answer_offer_5 = document.getElementById("answer_offer_5");
  let answer_offer_6 = document.getElementById("answer_offer_6");
  let answer_offer_7 = document.getElementById("answer_offer_7");

  let params_answer_offer_2 = document.getElementById("params_answer_offer_2").textContent;
  let params_answer_offer_3 = document.getElementById("params_answer_offer_3").textContent;
  let params_answer_offer_4 = document.getElementById("params_answer_offer_4").textContent;
  let params_answer_offer_5 = document.getElementById("params_answer_offer_5").textContent;
  let params_answer_offer_6 = document.getElementById("params_answer_offer_6").textContent;
  let params_answer_offer_7 = document.getElementById("params_answer_offer_7").textContent;

  if (params_answer_offer_2 == []){
    answer_offer_2.value = "50";
    document.getElementById("loyalty").textContent = answer_offer_2.value;
    document.getElementById("loyalty").style.display="inline-block";
  }else{
    answer_offer_2.value = params_answer_offer_2;
    document.getElementById("loyalty").textContent = answer_offer_2.value;
    document.getElementById("loyalty").style.display="inline-block";
  };

  if (params_answer_offer_3 == []){
    answer_offer_3.value = "50";
    document.getElementById("simplicity").textContent = `${Math.floor(Number(answer_offer_3.value)/10)}`;
    document.getElementById("simplicity").style.display="inline-block";
  }else{
    answer_offer_3.value = params_answer_offer_3;
    document.getElementById("simplicity").textContent = `${Math.floor(Number(answer_offer_3.value)/10)}`;
    document.getElementById("simplicity").style.display="inline-block";
  };

  if (params_answer_offer_4 == []){
    answer_offer_4.value = "50";
    document.getElementById("technology").textContent = `${Math.floor(Number(answer_offer_4.value)/10)}`;
    document.getElementById("technology").style.display="inline-block";
  }else{
    answer_offer_4.value = params_answer_offer_4;
    document.getElementById("technology").textContent = `${Math.floor(Number(answer_offer_4.value)/10)}`;
    document.getElementById("technology").style.display="inline-block";
  };

  if (params_answer_offer_5 == []){
    answer_offer_5.value = "50";
    document.getElementById("economy").textContent = `${Math.floor(Number(answer_offer_5.value)/10)}`;
    document.getElementById("economy").style.display="inline-block";
  }else{
    answer_offer_5.value = params_answer_offer_5;
    document.getElementById("economy").textContent = `${Math.floor(Number(answer_offer_5.value)/10)}`;
    document.getElementById("economy").style.display="inline-block";
  };

  if (params_answer_offer_6 == []){
    answer_offer_6.value = "50";
    document.getElementById("innovation").textContent = `${Math.floor(Number(answer_offer_6.value)/10)}`;
    document.getElementById("innovation").style.display="inline-block";
  }else{
    answer_offer_6.value = params_answer_offer_6;
    document.getElementById("innovation").textContent = `${Math.floor(Number(answer_offer_6.value)/10)}`;
    document.getElementById("innovation").style.display="inline-block";
  };

  if (params_answer_offer_7 == []){
    answer_offer_7.value = "50";
    document.getElementById("product").textContent = `${Math.floor(Number(answer_offer_7.value)/10)}`;
    document.getElementById("product").style.display="inline-block";
  }else{
    answer_offer_7.value = params_answer_offer_7;
    document.getElementById("product").textContent = `${Math.floor(Number(answer_offer_7.value)/10)}`;
    document.getElementById("product").style.display="inline-block";
  };




  answer_offer_2.addEventListener("change", function() {
    document.getElementById("loyalty").textContent = answer_offer_2.value;
  }, false);

  answer_offer_3.addEventListener("change", function() {
    document.getElementById("simplicity").textContent = `${Math.floor(Number(answer_offer_3.value)/10)}`;
  }, false);

  answer_offer_4.addEventListener("change", function() {
    document.getElementById("technology").textContent = `${Math.floor(Number(answer_offer_4.value)/10)}`;
  }, false);

  answer_offer_5.addEventListener("change", function() {
    document.getElementById("economy").textContent = `${Math.floor(Number(answer_offer_5.value)/10)}`;
  }, false);

  answer_offer_6.addEventListener("change", function() {
    document.getElementById("innovation").textContent = `${Math.floor(Number(answer_offer_6.value)/10)}`;
  }, false);

  answer_offer_7.addEventListener("change", function() {
    document.getElementById("product").textContent = `${Math.floor(Number(answer_offer_7.value)/10)}`;
  }, false);


  let error_offer = document.getElementById("error_message_offer");
  let answer_offer = [];

  if (error_offer.textContent !== []){
    answer_offer = error_offer.textContent.split(',');
    answer_offer.forEach(element => {
      for (let i = 1; i < 9; i++){
        if (element.includes(`offer ${i}`)){
          notyf.error({
            message: `Merci de répondre à la question n°${i}`,
            dismissible: true
          });
        };
      };
    });
  };

});
