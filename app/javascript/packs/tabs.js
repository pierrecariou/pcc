// function openTheme() {


//   const tabs = document.querySelectorAll(".tablinks");

//   tabs.forEach( (tab) => {
//       tab.addEventListener('click', (event) => {

//         // On cache toutes les div
//         const tabcontents = document.querySelectorAll(".tabcontent");
//         tabcontents.forEach(element => {
//           element.classList.remove("tabcontent-active");
//         })

//         // On cache tous les onglets
//         tabs.forEach(tab => {
//           tab.classList.remove("active");
//         })

//         // On récupère le texte de l'onglet cliqué
//         const theme = event.currentTarget.innerText;
//         // On affiche la div
//         document.getElementById(theme).classList.add("tabcontent-active");
//         // On affiche l'onglet
//         event.currentTarget.classList.toggle("active");
//       })
//   });
// };

// export { openTheme };



