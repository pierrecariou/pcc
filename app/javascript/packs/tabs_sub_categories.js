function openSubCategory() {
  const tabs = document.querySelectorAll(".tab");

  // tabs.forEach( (tab) => {
  //     tab.addEventListener('click', (event) => {
  //       const articles = document.querySelectorAll(".card.listed-article");
  //       articles.forEach( (article) => {
  //         article.style.display = "none";
  //       });

  //       const subCategoryButton = event.currentTarget.innerText;
  //       // On affiche la div
  //       // document.getElementById(sub_category).style.display = "block";
  //       articles.forEach( (article) => {
  //         const articleSubCategories = article.dataset.subCategories.split();
  //         // console.log(articleSubCategories);
  //         articleSubCategories.forEach( (sub_category) => {
  //           if (sub_category === subCategoryButton) {
  //             article.style.display = "block";
  //           }
  //         });
  //       });
// var urlParams = new URLSearchParams(window.location.search);
// // console.log(urlParams.has('post')); // true
// console.log(urlParams.get('action'));

     /// on parcourt tabs pour supprimer sur chaque tab la .active
  tabs.forEach((tab) => {
    tab.addEventListener('click', (event) => {
      tab.classList.remove('active');
        /// on ajoute la classe active au tab selectionne
      event.currentTarget.classList.add('active');
    });
  });
};
export { openSubCategory };
