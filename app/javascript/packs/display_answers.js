const buttons = document.querySelectorAll(".reactions > i")




function displayAnswers() {

  buttons.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      const idSubComment = event.currentTarget.dataset.id;
      const answers = document.getElementById("sub-comment-"+idSubComment.toString());
      const line = document.getElementById("line-"+idSubComment.toString());
      const footer = document.getElementById("footer-"+idSubComment.toString());
        answers.classList.toggle("hidden");
        line.classList.toggle("hidden");
        footer.classList.toggle("background")
    });
  });
}

export {displayAnswers};
