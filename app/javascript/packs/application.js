import "bootstrap";


import  { selectCategory } from "./select_category";

selectCategory();

import  { selectSubcategory } from "./select_category";

selectSubcategory();

import  { selectCategoryComment } from "./select_category_comment";

selectCategoryComment();

import  { selectSubcategoryComment } from "./select_category_comment";

selectSubcategoryComment();

import  { closeDebat } from "./close_debat";

closeDebat();

import  { buttonRepondre } from "./button_repondre";

buttonRepondre();

import { popupUpvote } from "./popup_upvote"

popupUpvote();


// import  { hideOtherDebates } from "./debat";

// hideOtherDebates();


// import { openTheme } from "./tabs";

// // openTheme();

import { proCon } from "./pro_con"

proCon();

import { displayAnswers } from "./display_answers"

displayAnswers();

import { displayComments } from "./display_comments"

displayComments();

// import { selectDate } from "./select_date";


// selectDate();


import { openSubCategory } from "./tabs_sub_categories";
openSubCategory();

import { submitForm } from "./submit_form";

submitForm()





// import { turnTabIntoActive } from "./turnTabIntoActive"

// turnTabIntoActive();

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


