const dates = document.querySelectorAll('.dates');

function selectDate() {
  const semaine = document.querySelector('.semaine');
  // jours.forEach((jour1) => {
  if (window.location.pathname === '/') {
    semaine.click();
  }

  // });
};

export { selectDate };
