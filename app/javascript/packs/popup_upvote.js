const popups = document.querySelectorAll(".popup")

function popupUpvote() {
  popups.forEach((popup) => {
    popup.addEventListener('mouseover', (event) => {
      console.log('hey');
      const idPopup = event.currentTarget.dataset.id;
      const popupUpvote = document.getElementById("my-popup-"+idPopup.toString());
      popupUpvote.classList.toggle("show");
    });
     popup.addEventListener('mouseout', (event) => {
      console.log('hey');
      const idPopup = event.currentTarget.dataset.id;
      const popupUpvote = document.getElementById("my-popup-"+idPopup.toString());
      popupUpvote.classList.toggle("show");
    });
  });
}

export {popupUpvote};
