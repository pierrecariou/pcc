const categories = document.querySelectorAll('.category-image')
const categoryBoxes = document.querySelectorAll('.sub-categories')
const subcategories = document.querySelectorAll('.subcategory-choice');


function unselectSubCategories(option) {
  const activeLabels = option.querySelectorAll('label.active');
  activeLabels.forEach((label) => {
    const forAttr = label.getAttribute("for");
    const relatedInput = option.querySelector(`#${forAttr}`);
    relatedInput.click();
  })
}

function activateOnlyClickedCategory(event) {
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

    unselectSubCategories(option);
  });
}

const selectCategory = () => {

  categories.forEach((category) => {
    category.addEventListener('click', (event) => {

      activateOnlyClickedCategory(event);

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
