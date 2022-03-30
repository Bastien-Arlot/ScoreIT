// window.addEventListener("load", function(){

//   const notyf = new Notyf({
//     duration: 6000,
//     position: {
//       x: 'right',
//       y: 'top',
//     }
//   });

//   let answer_team_1 = document.getElementById("answer_team_1");
//   let answer_team_2 = document.getElementById("answer_team_2");
//   let answer_team_3 = document.getElementById("answer_team_3");
//   let answer_team_4 = document.getElementById("answer_team_4");

//   answer_team_1.value = "50";
//   answer_team_2.value = "50";
//   answer_team_3.value = "50";
//   answer_team_4.value = "50";

//   answer_team_1.addEventListener("change", function() {
//     document.getElementById("manager").textContent = `${Math.floor(Number(answer_team_1.value)/10)}`;
//   }, false);

//   answer_team_2.addEventListener("change", function() {
//     document.getElementById("commercial").textContent = `${Math.floor(Number(answer_team_2.value)/10)}`;
//   }, false);

//   answer_team_3.addEventListener("change", function() {
//     document.getElementById("finance").textContent = `${Math.floor(Number(answer_team_3.value)/10)}`;
//   }, false);

//   answer_team_4.addEventListener("change", function() {
//     document.getElementById("entreprenership").textContent = `${Math.floor(Number(answer_team_4.value)/10)}`;
//   }, false);





//   let error_team = document.getElementById("error_message_team");
//   let answer_team = [];

//   if (error_team.textContent !== []){
//     answer_team = error_team.textContent.split(',');
//     answer_team.forEach(element => {
//       for (let i = 1; i < 11; i++){
//         if (element.includes(`Answer team ${i} doit être rempli(e)`)){
//           notyf.error({
//             message: `Merci de répondre à la question n°${i}`,
//             dismissible: true
//           });
//         };
//       };
//     });
//   };

// });
