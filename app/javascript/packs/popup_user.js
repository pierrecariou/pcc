const popups = document.querySelectorAll(".user-infos-popup");
const userInfos = document.querySelectorAll(".popupuser");

function removePopupUser() {
  popups.forEach((popup) => {
    const idPopup = popup.dataset.id;
    const popupUser = document.getElementById("my-user-popup-"+idPopup.toString());
    popupUser.classList.remove("show");
  });
}

function outPopup() {
  popups.forEach((popup) => {
    popup.addEventListener('mouseleave', (event) => {
      var time = setTimeout(removePopupUser, 500);
      userInfos.forEach((userInfo) => {
        userInfo.addEventListener('mouseover', (event) => {
          var stop = clearTimeout(time);
        });
        userInfo.addEventListener('mouseleave', (event) => {
        setTimeout(removePopupUser, 100);
        });
      });
    });
  });
}

function popupUser() {
  popups.forEach((popup) => {
    popup.addEventListener('mouseover', (event) => {

      const idPopup = event.currentTarget.dataset.id;
      const popupUser = document.getElementById("my-user-popup-"+idPopup.toString());
      popupUser.classList.add("show");
    });
  });
  outPopup();
}



export {popupUser};

