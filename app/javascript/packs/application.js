import "bootstrap";
import { openTheme } from "./tabs.js";


openTheme();



// function openTheme(evt, theme) {
//   // Declare all variables
//   var i, tabcontent, tablinks;

//   // Get all elements with class="tabcontent" and hide them
//   tabcontent = document.getElementsByClassName("tabcontent");
//   for (i = 0; i < tabcontent.length; i++) {
//     tabcontent[i].style.display = "none";
//   }

//   // Get all elements with class="tablinks" and remove the class "active"
//   tablinks = document.getElementsByClassName("tablinks");
//   for (i = 0; i < tablinks.length; i++) {
//     tablinks[i].className = tablinks[i].className.replace(" active", "");
//   }

//   // Show the current tab, and add an "active" class to the button that opened the tab
//   document.getElementById(theme).style.display = "block";
//   console.log(theme);
//   evt.currentTarget.className += " active";
//   console.log(evt)
// };

// openTheme('click', 'Ecologie');
// openTheme('click', 'Economie');
// openTheme('click', 'Politique');
// openTheme('click', 'Numérique');

