const btn = document.querySelector(".button-repondre")
const form = document.querySelector(".answers")



function buttonRepondre() {
  if (btn) {
    btn.addEventListener('click', (event) => {
        form.classList.toggle("active");
    });
  };
}

export {buttonRepondre};

