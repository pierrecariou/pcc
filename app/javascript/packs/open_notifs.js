function openNotifs() {
const bell_notif = document.getElementById('bell');
const menu  = document.querySelector('.notifications');
const circle = document.querySelector('.red-circle');
  bell_notif.addEventListener('click', (event) => {
    menu.classList.toggle("active");
    console.log("click");
  });
  if (menu) {
  document.addEventListener("click", (event) => {
    if (event.target.closest(".menu")) return;
    menu.classList.remove("active");
    console.log("outclick");
  });
  }
}

export {openNotifs};
