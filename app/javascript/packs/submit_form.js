function submitForm() {
  const form = document.getElementById('sub-categories-form')
  if (form) {
    form.addEventListener('change', () => {
      console.log('clicked')
      form.submit();
    })
  }
}

export { submitForm };


function submitForm2() {
  const user = document.querySelector('.photo-form');
  if (user) {
  const userID = user.dataset.id;


  console.log(userID.toString())
  const form = document.getElementById('edit_user_'+ userID.toString());
  if (form) {
    form.addEventListener('change', () => {
      form.submit();
    })
  }
}
}

export { submitForm2 };
