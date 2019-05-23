const buttons = document.querySelectorAll(".article-comments")
const crosses = document.querySelectorAll(".cross")



function displayComments() {

  buttons.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      console.log("yes");
      const idArticle = event.currentTarget.dataset.id;
      const comments = document.getElementById("comment-article-"+idArticle.toString());
        comments.classList.toggle("hidden");
    });
  });
  crosses.forEach((cross) => {
    cross.addEventListener('click', (event) => {
      const idCross = event.currentTarget.dataset.id;
      const comments = document.getElementById("comment-article-"+idCross.toString());
        comments.classList.toggle("hidden");
    });
  });
}

export {displayComments};
