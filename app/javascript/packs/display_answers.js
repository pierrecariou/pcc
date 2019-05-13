const buttons = document.querySelectorAll(".reactions > i")




function displayAnswers() {

  buttons.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      console.log("yes");
      const idSubComment = event.currentTarget.dataset.id;
      const answers = document.getElementById("sub-comment-"+idSubComment.toString());
      const line = document.getElementById("line-"+idSubComment.toString());
      const footer = document.getElementById("footer-"+idSubComment.toString());
      const chevronUp = document.getElementById("up-"+idSubComment.toString());
      const chevronDown = document.getElementById("down-"+idSubComment.toString());
        answers.classList.toggle("hidden");
        line.classList.toggle("hidden");
        footer.classList.toggle("background");
        chevronDown.classList.toggle("hidden");
        chevronUp.classList.toggle("active");
    });
  });
}

export {displayAnswers};
