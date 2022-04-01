window.addEventListener("load", function(){ 

  let score_name = document.getElementById("score_name").textContent;
  let score_category_team = document.getElementById("score_category_team").textContent;
  let score_category_finance = document.getElementById("score_category_finance").textContent;
  let score_category_innovation = document.getElementById("score_category_innovation").textContent;
  let score_category_market = document.getElementById("score_category_market").textContent;
  let score_category_offer = document.getElementById("score_category_offer").textContent;
  let score_category_strategy = document.getElementById("score_category_strategy").textContent;


  var marksCanvas = document.getElementById("marksChart");

  var marksData = {
    labels: ["Equipe", "Finance", "Innovation", "Marché", "Offre", "Strategie"],
    datasets: [{
      label: score_name,
      data: [Number(score_category_team), Number(score_category_finance), Number(score_category_innovation), Number(score_category_market), Number(score_category_offer), Number(score_category_strategy)],
      fill: true,
      backgroundColor: 'rgba(158, 69, 209, 0.2)',
      borderColor: 'rgb(158, 69, 209)',
      pointBackgroundColor: 'rgb(158, 69, 209)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgb(158, 69, 209)'
    }]
  };

  var radarChart = new Chart(marksCanvas, {
    type: 'radar',
    data: marksData,
    options: {
      scale: {
        ticks: {
          beginAtZero: true,
          max: 100,
          min: 0,
        }
      }
    }
  });

  var barCanvas = document.getElementById("barChart");

  var barData = {
    labels: ["Equipe", "Finance", "Innovation", "Marché", "Offre", "Strategie"],
    datasets: [{
      label: score_name,
      data: [Number(score_category_team), Number(score_category_finance), Number(score_category_innovation), Number(score_category_market), Number(score_category_offer), Number(score_category_strategy)],
      backgroundColor: [
        'rgba(158, 69, 209, 0.2)',
        'rgba(158, 69, 209, 0.2)',
        'rgba(158, 69, 209, 0.2)',
        'rgba(158, 69, 209, 0.2)',
        'rgba(158, 69, 209, 0.2)',
        'rgba(158, 69, 209, 0.2)'
      ],
      borderColor: [
        'rgb(158, 69, 209)',
        'rgb(158, 69, 209)',
        'rgb(158, 69, 209)',
        'rgb(158, 69, 209)',
        'rgb(158, 69, 209)',
        'rgb(158, 69, 209)'
      ],
      borderWidth: 2
    }]
  };

  var barChart = new Chart(barCanvas, {
    type: 'bar',
    data: barData,
    options: {
      scales: {
        y: {
          beginAtZero: true,
          suggestedMax: 100
        }
      }
    },
  });

});
