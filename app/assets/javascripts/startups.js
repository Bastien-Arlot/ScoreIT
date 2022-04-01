window.addEventListener("load", function(){

  let error_startup = document.getElementById("error_message_startup");
  let answer_startup = [];

  const notyf = new Notyf({
    duration: 0,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  if (error_startup.textContent !== []){
    answer_startup = error_startup.textContent.split(',');
    answer_startup.forEach(element => {
      if (element.includes("Name doit être rempli(e)")){
        notyf.error({
          message: `Merci de compléter le nom de votre entreprise`,
          dismissible: true
        });
      };
      if (element.includes("Name est trop long")){
        notyf.error({
          message: `Merci d'écrire un nom d'entreprise de moins de 20 caractères`,
          dismissible: true
        });
      };

      if (element.includes("Description doit être rempli(e)")){
        notyf.error({
          message: `Merci de compléter la description de votre entreprise`,
          dismissible: true
        });
      };

    });
  };

});
