function openSubCategory() {


  const tabs = document.querySelectorAll(".tablink");

  tabs.forEach( (tab) => {
      tab.addEventListener('click', (event) => {
        const articles = document.querySelectorAll(".card.listed-article");
        articles.forEach( (article) => {
          article.style.display = "none";
        });
        // On récupère le texte de l'onglet cliqué
        const subCategoryButton = event.currentTarget.innerText;
        // On affiche la div
        // document.getElementById(sub_category).style.display = "block";
        articles.forEach( (article) => {
          const articleSubCategories = article.dataset.subCategories.split();
          // console.log(articleSubCategories);
          articleSubCategories.forEach( (sub_category) => {
            if (sub_category === subCategoryButton) {
              article.style.display = "block";
            }
          });
        });






      })
  });
};

export { openSubCategory };
