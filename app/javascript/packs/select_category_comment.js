const categories = document.querySelectorAll('.category-image-comment')
const categoryBoxes = document.querySelectorAll('.sub-categories-comment')
const subcategories = document.querySelectorAll('.subcategory-choice-comment');


function unselectSubCategories(option) {
  const activeLabels = option.querySelectorAll('.subcategory-choice-comment.active');
  activeLabels.forEach((label) => {
    const forAttr = label.getAttribute("for");
    const relatedInput = option.querySelector(`#${forAttr}`);
    relatedInput.click();
  })
}

function activateOnlyClickedCategory(event) {
  const categoryOptions = Array.from(document.querySelectorAll('.category-box-comment'));
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

const selectCategoryComment = () => {

  categories.forEach((category) => {
    category.addEventListener('click', (event) => {

      activateOnlyClickedCategory(event);

      subcategories.forEach((subcategory) => {
        subcategory.classList.remove('active');
      })
      const categoryId = event.currentTarget.dataset.categoryId;
      const subCategoryBox = document.getElementById(categoryId +"comment");
      console.log(subCategoryBox)

      categoryBoxes.forEach(box => box.classList.add('hidden'));
        subCategoryBox.classList.toggle('hidden');
    })
  })
}

const selectSubcategoryComment = () => {
  subcategories.forEach( (subcategory) => {
    subcategory.addEventListener('click', (event) => {
      event.currentTarget.classList.toggle('active');
    })
  })
};

export { selectCategoryComment, selectSubcategoryComment };
