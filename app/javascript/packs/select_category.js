// Selectionner la catégorie qui nous interesse
// Changer sa classe pour qu'elle soit visible
// Enregistrer la catégorie selectionnée soumis par simple_form

// const toggleClass = () => {
//   const categories = document.querySelectorAll('.select-category')
//   categories.forEach( category => {
//     let array = [];
//     category.addEventListener( 'click', (event) => {
//       // categories.forEach( category => {
//       //   category.classList.remove('selected-element');
//       // });
//       event.currentTarget.classList.toggle('selected-element');
//       const selectedCategories = document.querySelectorAll('.selected-element');
//       selectedCategories.forEach( category => {
//         array.push(category.dataset.category);
//       });
//       const input = document.getElementById("article_category");
//       input.value = array;
//     });
//   });
// };


const selectCategory = () => {
  const categories = document.querySelectorAll('.select-category')
  categories.forEach( category => {
    let array = [];
    category.addEventListener( 'click', (event) => {
      // categories.forEach( category => {
      //   category.classList.remove('selected-element');
      // });
      event.currentTarget.classList.toggle('selected-element');
      const selectedCategories = document.querySelectorAll('.selected-element');
      selectedCategories.forEach( category => {
        array.push(category.dataset.category);
      });
      const input = document.getElementById("article_category");
      input.value = array;
    });
    array = [];
  });
  // categories.forEach( category => {
  //   toggleClass(category);
  //   // category.addEventListener( 'click', (event) => {
  //   //   // categories.forEach( category => {
  //   //   //   category.classList.remove('selected-element');
  //   //   // });
  //   //   event.currentTarget.classList.toggle('selected-element');
  //   });
  // const input = document.getElementById("article_category");
  // input.value = event.currentTarget.dataset.category;
  // console.log(input.value)

};



const selectSubcategory = () => {
  const subcategories = document.querySelectorAll('.select-subcategory')
  subcategories.forEach( subcategory => {
    subcategory.addEventListener( 'click', (event) => {
      // subcategories.forEach( subcategory => {
      //   subcategory.classList.remove('selected-element');
      // });
      // console.log(event.currentTarget)
      event.currentTarget.classList.toggle('selected-subcategory');
      const input = document.getElementById("article_subcategory");
      input.value = event.currentTarget.dataset.subcategory;
    })
  })
}

export { selectCategory, selectSubcategory }
