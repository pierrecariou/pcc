const seeComments = document.querySelectorAll(".see-comments");

function seeComment() {
  seeComments.forEach((seeComment) => {
    seeComment.addEventListener('click', (event) => {

    const idComment = event.currentTarget.dataset.id
    const textComment = document.getElementById("text-comment-" + idComment.toString());
    const textCommentInactive = document.getElementById("text-comment-inactive-" + idComment.toString());
    textComment.classList.add("inactive");
    textCommentInactive.classList.remove("inactive");

    })
  })
}


export {seeComment};
