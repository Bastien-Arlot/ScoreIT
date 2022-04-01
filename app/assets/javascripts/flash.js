window.addEventListener("load", function(){

  const notyf = new Notyf({
    duration: 0,
    position: {
      x: 'right',
      y: 'top',
    }
  });

  let notice = document.getElementById("notice");
  let alert = document.getElementById("alert");

  if (notice.textContent !== ""){
    notyf.success({
      message: notice.textContent,
      duration: 3000,
      dismissible: true
    });
  };

  if (alert.textContent !== ""){
    notyf.error({
      message: alert.textContent,
      duration: 6000,
      dismissible: true
    });
  };

});
