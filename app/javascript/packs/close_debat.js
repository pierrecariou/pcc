const btn = document.querySelector(".form-check-label.boolean")




function closeDebat() {

if (btn) {
    btn.addEventListener('click', (event) => {
      event.currentTarget.classList.toggle("active");
    });
};

}

export {closeDebat};
