const btn = document.querySelector(".form-check-label.boolean")
const impossible = document.querySelector(".impossible")
const possible = document.querySelector(".possible")


function closeDebat() {

if (btn) {
    btn.addEventListener('click', (event) => {
      impossible.classList.toggle("active");
      possible.classList.toggle("active");
    });
};

}

export {closeDebat};
