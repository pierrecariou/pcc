const popups = document.querySelectorAll(".user-infos-popup-comment");
const userInfos = document.querySelectorAll(".popupuser-comment");

function removePopupUserComment() {
  popups.forEach((popup) => {
    const idPopup = popup.dataset.id;
    const popupUser = document.getElementById("my-user-popup-comment-"+idPopup.toString());
    popupUser.classList.remove("show");
  });
}

function outPopupComment() {
  popups.forEach((popup) => {
    popup.addEventListener('mouseleave', (event) => {
      var time = setTimeout(removePopupUserComment, 500);
      userInfos.forEach((userInfo) => {
        userInfo.addEventListener('mouseover', (event) => {
          var stop = clearTimeout(time);
        });
        userInfo.addEventListener('mouseleave', (event) => {
        setTimeout(removePopupUserComment, 100);
        });
      });
    });
  });
}

function popupUserComment() {
  popups.forEach((popup) => {
    popup.addEventListener('mouseover', (event) => {

      const idPopup = event.currentTarget.dataset.id;
      const popupUser = document.getElementById("my-user-popup-comment-"+idPopup.toString());
      popupUser.classList.add("show");
    });
  });
  outPopupComment();
}

export {popupUserComment};
