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
  const form = document.getElementById('edit_user_1')
  if (form) {
    form.addEventListener('change', () => {
      console.log('clicked')
      form.submit();
    })
  }
}

export { submitForm2 };
