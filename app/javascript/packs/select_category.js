const categories = document.querySelectorAll('.category-image')
const categoryBoxes = document.querySelectorAll('.sub-categories')
categories.forEach(category => {
  category.addEventListener('click', (event) => {
    const categoryId = event.currentTarget.dataset.categoryId
    const subCategoryBox = document.getElementById(categoryId)
    categoryBoxes.forEach(box => box.classList.add('hidden') )
    subCategoryBox.classList.toggle('hidden')
  })
})


