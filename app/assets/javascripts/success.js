window.addEventListener("load", function(){ 

  let countdown = document.getElementById("countdown");
  let redirectDashboard = document.getElementById("redirect_dashboard");

  loading();

  function loading(){
    setTimeout(function(){
      countdown.textContent = "6";
    }, 1000);

    setTimeout(function(){
      countdown.textContent = "5";
    }, 2000);

    setTimeout(function(){
      countdown.textContent = "4";
    }, 3000);

    setTimeout(function(){
      countdown.textContent = "3";
    }, 4000);

    setTimeout(function(){
      countdown.textContent = "2";
    }, 5000);

    setTimeout(function(){
      countdown.textContent = "1";
    }, 6000);

    setTimeout(function(){
      redirectDashboard.click();
    }, 7000);
  }
});
