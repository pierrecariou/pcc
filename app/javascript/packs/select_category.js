// on veut sélectionner la catégorie
// quand on clique sur la catégorie
const categories = document.querySelectorAll(".col-xs-3");
categories.forEach( category => {
  category.addEventListener("click", (event) => {
    const categoryId = event.currentTarget.id
    console.log(categoryId);
    const subCategories = document.querySelectorAll(`.${categoryId}`)
    subCategories.forEach((subCategory) => {
      subCategory.classList.toggle("hidden");
    })
  // on fait apparaitre la div des sous-catégories
  // on veut sélectionner la div correspondante
  // lui enlever la classe hidden
  })
})
// quand elle est sélectionnée, on veut faire apparaître les sous-catégories










const selectCategory = () => {
  const categories = document.querySelectorAll('.category-choice');
  categories.forEach( category => {
    category.addEventListener( 'click', (event) => {
      categories.forEach( category => {
        category.classList.remove('selected-element');
      });
    event.currentTarget.classList.toggle('selected-element');



    // const subcategories = document.querySelectorAll('.subcategory-choice');



    // event.currentTarget.classList.remove('hidden');

    // const input = document.getElementById('article_category')
    // console.log(input)
    // input.value = event.currentTarget.dataset.category;
    } )
  })

}

export { selectCategory }


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


// const selectCategory = () => {
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
//     array = [];
//   });

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

// };



// const selectSubcategory = () => {
//   const subcategories = document.querySelectorAll('.select-subcategory')
//   subcategories.forEach( subcategory => {
//     subcategory.addEventListener( 'click', (event) => {
//       // subcategories.forEach( subcategory => {
//       //   subcategory.classList.remove('selected-element');
//       // });
//       // console.log(event.currentTarget)
//       event.currentTarget.classList.toggle('selected-subcategory');
//       const input = document.getElementById("article_subcategory");
//       input.value = event.currentTarget.dataset.subcategory;
//     })
//   })
// }

