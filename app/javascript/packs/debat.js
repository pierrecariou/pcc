// const debatTitles = document.querySelectorAll('.title-comment');
// const debats = document.querySelectorAll('.user-comment-card');


// function hideOtherDebates() {
//   const debatTitle = document.querySelector('.title-comment');
//   if (debatTitle) {
//     debatTitle.classList.add('active');
//   }
//   debats.forEach((debat) => {
//     if (debat.querySelector('.title-comment').innerText.trim() != debatTitle.innerText.trim()) {
//       debat.style.display = "none";
//     }
//   });


//   debatTitles.forEach((title) => {
//     title.addEventListener('click', (event) => {
//       debatTitles.forEach((title) => {
//         title.classList.remove('active');
//       });
//       title.classList.add('active');
//       debats.forEach((debat) => {
//         debat.style.display = "none";
//         const titleInsideDebat = debat.querySelector('.title-comment')
//        if (titleInsideDebat.innerText.trim() === event.currentTarget.innerText.trim()) {
//           debat.style.display = "block";
//         }
//       });
//     });
//   });
// };

// export { hideOtherDebates };
