const buttons = document.querySelectorAll(".collection_radio_buttons")




function proCon() {

  buttons.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      buttons.forEach((btn) => {
        btn.classList.remove("active");
        });
      event.currentTarget.classList.add("active");
    });
  });
}

export {proCon};
