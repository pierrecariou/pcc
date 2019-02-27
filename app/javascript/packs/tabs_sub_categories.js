function openSubCategory() {
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

  const tabs = document.querySelectorAll(".tablink");
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


        // On récupère le texte de l'onglet cliqué
        const sub_category = event.currentTarget.innerText;
        // On affiche la div

      })
  });

  // Show the current tab, and add an "active" class to the button that opened the tab
  // document.getElementById(theme).style.display = "block";
  // evt.currentTarget.className += " active";
};

export { openSubCategory };
