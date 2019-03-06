const categories = document.querySelectorAll('.category-image')
const categoryBoxes = document.querySelectorAll('.sub-categories')
const subcategories = document.querySelectorAll('.subcategory-choice');

const selectCategory = () => {

  categories.forEach((category) => {
    category.addEventListener('click', (event) => {
      const categoryOptions = Array.from(document.querySelectorAll('.category-box'));
      const currentCategoryOption = event.currentTarget.parentElement;
      const currentCategoryOptionIndex = categoryOptions.indexOf(currentCategoryOption);
      const unselectedCategoryOptions = categoryOptions.filter((option, index) => index !== currentCategoryOptionIndex);
      if (currentCategoryOption.classList.contains('not-active')) {
        currentCategoryOption.classList.remove('not-active');
      }
      unselectedCategoryOptions.forEach((option) => {
        if (!option.classList.contains('not-active')) {
          option.classList.add('not-active');
        }
      });

      subcategories.forEach((subcategory) => {
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
