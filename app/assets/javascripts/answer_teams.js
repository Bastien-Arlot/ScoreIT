window.addEventListener("load", function(){ 

  const notyf = new Notyf({
    duration: 0,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let error_team = document.getElementById("error_message_team");
  let answer_team = [];

  if (error_team.textContent !== []){
    answer_team = error_team.textContent.split(',');
    answer_team.forEach(element => {
      for (let i = 1; i < 11; i++){
        if (element.includes(`Answer team ${i} doit être rempli(e)`)){
              notyf.error({
                  message: `Merci de répondre à la question n°${i}`,
                  dismissible: true
                  });
            };
      };
    });
  };

});