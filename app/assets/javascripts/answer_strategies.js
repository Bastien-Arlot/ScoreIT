window.addEventListener("load", function(){

  const notyf = new Notyf({
    duration: 6000,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let error_strategy = document.getElementById("error_message_strategy");
  let answer_strategy = [];

  if (error_strategy.textContent !== []){
    answer_strategy = error_strategy.textContent.split(',');
    answer_strategy.forEach(element => {
      for (let i = 1; i < 12; i++){
        if (element.includes(`Answer strategy ${i} doit être rempli(e)`)){
          notyf.error({
            message: `Merci de répondre à la question n°${i}`,
            dismissible: true
          });
        };
      };
    });
  };

});
