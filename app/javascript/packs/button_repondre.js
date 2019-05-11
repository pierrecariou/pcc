const btn = document.querySelector(".button-repondre")
const form = document.querySelector(".answers")



function buttonRepondre() {

  btn.addEventListener('click', (event) => {
      form.classList.toggle("active");
  });
}

export {buttonRepondre};

