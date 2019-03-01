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
