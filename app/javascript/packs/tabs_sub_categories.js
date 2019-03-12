function openSubCategory() {
  const tabs = document.querySelectorAll(".tab");

  tabs.forEach((tab) => {
    tab.addEventListener('click', (event) => {
      tab.classList.remove('active');
      event.currentTarget.classList.add('active');
    });
  });
};
export { openSubCategory };
