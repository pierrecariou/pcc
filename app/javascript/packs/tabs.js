function openTheme() {
  // Declare all variables
  // var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  // tabcontent = document.getElementsByClassName("tabcontent");
  // for (i = 0; i < tabcontent.length; i++) {
  //   tabcontent[i].style.display = "none";
  // }

  // // Get all elements with class="tablinks" and remove the class "active"
  // tablinks = document.getElementsByClassName("tablinks");
  // for (i = 0; i < tablinks.length; i++) {
  //   tablinks[i].className = tablinks[i].className.replace("active", "");
  // }

  const tabs = document.querySelectorAll(".tablinks");
  // let i = 0;
  // for (i = 0; i < tabs.length; i++) {
  //   tabs[i].className = tabs[i].className.replace("active", "");
  // }
  // const tabcontent = document.getElementsByClassName("tabcontent");
  //   for (i = 0; i < tabcontent.length; i++) {
  //     tabcontent[i].style.display = "none";
  //   }
  tabs.forEach( (tab) => {
      tab.addEventListener('click', (event) => {

        // On cache toutes les div
        const tabcontents = document.querySelectorAll(".tabcontent");
        tabcontents.forEach(element => {
          element.classList.remove("tabcontent-active");
        })

        // On cache tous les onglets
        tabs.forEach(tab => {
          tab.classList.remove("active");
        })

        // On récupère le texte de l'onglet cliqué
        const theme = event.currentTarget.innerText;
        // On affiche la div
        document.getElementById(theme).classList.add("tabcontent-active");
        // On affiche l'onglet
        event.currentTarget.classList.toggle("active");
      })
  });

  // Show the current tab, and add an "active" class to the button that opened the tab
  // document.getElementById(theme).style.display = "block";
  // evt.currentTarget.className += " active";
};

export { openTheme };



