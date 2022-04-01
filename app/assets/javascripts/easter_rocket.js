window.addEventListener("load", function(){

  let contact = document.getElementById("contact");
  let logo = document.getElementById("logofooter");


  contact.addEventListener("dblclick", function(){

    contact.textContent = "Décollage ?";

    contact.addEventListener("click", function(){

      takeOff();

      function takeOff(){
        setTimeout(function(){
          contact.textContent = "5";
        }, 1000);

        setTimeout(function(){
          contact.textContent = "4";
        }, 2000);

        setTimeout(function(){
          contact.textContent = "3";
        }, 3000);

        setTimeout(function(){
          contact.textContent = "2";
        }, 4000);

        setTimeout(function(){
          contact.textContent = "1";
        }, 5000);

        setTimeout(function(){
          contact.textContent = "Décollage !!";
          logo.classList.add("rocket");
        }, 6000);

        setTimeout(function(){
          contact.textContent = "Contact";
        }, 8500);

      }


    },{once : true});

  },{once : true});


});
