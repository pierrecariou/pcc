const categories = document.querySelectorAll('.category-image')
const categoryBoxes = document.querySelectorAll('.sub-categories')
const subcategories = document.querySelectorAll('.subcategory-choice');

const selectCategory = () => {

  categories.forEach( (category) => {
    category.addEventListener('click', (event) => {
      subcategories.forEach( (subcategory) => {
        subcategory.classList.remove('active');
      })
      const categoryId = event.currentTarget.dataset.categoryId;
      const subCategoryBox = document.getElementById(categoryId);

      categoryBoxes.forEach(box => box.classList.add('hidden'));
      subCategoryBox.classList.toggle('hidden');
    })
  })
}

const selectSubcategory = () => {
  subcategories.forEach( (subcategory) => {
    subcategory.addEventListener('click', (event) => {
      event.currentTarget.classList.toggle('active');
    })
  })
};

export { selectCategory, selectSubcategory };
