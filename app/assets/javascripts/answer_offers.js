window.addEventListener("load", function(){

  const notyf = new Notyf({
    duration: 6000,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let answer_offer_2 = document.getElementById("answer_offer_2")
  let answer_offer_3 = document.getElementById("answer_offer_3")
  let answer_offer_4 = document.getElementById("answer_offer_4")
  let answer_offer_5 = document.getElementById("answer_offer_5")
  let answer_offer_6 = document.getElementById("answer_offer_6")
  let answer_offer_7 = document.getElementById("answer_offer_7")

  answer_offer_2.value = "50";
  answer_offer_3.value = "50";
  answer_offer_4.value = "50";
  answer_offer_5.value = "50";
  answer_offer_6.value = "50";
  answer_offer_7.value = "50";

  answer_offer_2.addEventListener("change", function() {
    document.getElementById("fidelisation").textContent = answer_offer_2.value;
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
