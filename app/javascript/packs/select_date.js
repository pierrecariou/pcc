const dates = document.querySelectorAll('.dates');

function selectDate() {
  const jour = document.querySelector('.jour');
  // jours.forEach((jour1) => {
    // jour.click();
    jour.addEventListener('click', (event) => {
      jour.classList.add('active');
    });
  // });
};

export { selectDate };
