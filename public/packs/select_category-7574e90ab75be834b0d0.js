/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 1);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */,
/* 1 */
/*!*************************************************!*\
  !*** ./app/javascript/packs/select_category.js ***!
  \*************************************************/
/*! exports provided: selectCategory, selectSubcategory */
/*! all exports used */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "selectCategory", function() { return selectCategory; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "selectSubcategory", function() { return selectSubcategory; });
// Selectionner la catégorie qui nous interesse
// Changer sa classe pour qu'elle soit visible
// Enregistrer la catégorie selectionnée soumis par simple_form

// const toggleClass = () => {
//   const categories = document.querySelectorAll('.select-category')
//   categories.forEach( category => {
//     let array = [];
//     category.addEventListener( 'click', (event) => {
//       // categories.forEach( category => {
//       //   category.classList.remove('selected-element');
//       // });
//       event.currentTarget.classList.toggle('selected-element');
//       const selectedCategories = document.querySelectorAll('.selected-element');
//       selectedCategories.forEach( category => {
//         array.push(category.dataset.category);
//       });
//       const input = document.getElementById("article_category");
//       input.value = array;
//     });
//   });
// };


const selectCategory = () => {
  const categories = document.querySelectorAll('.select-category');
  categories.forEach(category => {
    let array = [];
    category.addEventListener('click', event => {
      // categories.forEach( category => {
      //   category.classList.remove('selected-element');
      // });
      event.currentTarget.classList.toggle('selected-element');
      const selectedCategories = document.querySelectorAll('.selected-element');
      selectedCategories.forEach(category => {
        array.push(category.dataset.category);
      });
      const input = document.getElementById("article_category");
      input.value = array;
    });
    array = [];
  });
  // categories.forEach( category => {
  //   toggleClass(category);
  //   // category.addEventListener( 'click', (event) => {
  //   //   // categories.forEach( category => {
  //   //   //   category.classList.remove('selected-element');
  //   //   // });
  //   //   event.currentTarget.classList.toggle('selected-element');
  //   });
  // const input = document.getElementById("article_category");
  // input.value = event.currentTarget.dataset.category;
  // console.log(input.value)
};

const selectSubcategory = () => {
  const subcategories = document.querySelectorAll('.select-subcategory');
  subcategories.forEach(subcategory => {
    subcategory.addEventListener('click', event => {
      // subcategories.forEach( subcategory => {
      //   subcategory.classList.remove('selected-element');
      // });
      // console.log(event.currentTarget)
      event.currentTarget.classList.toggle('selected-subcategory');
      const input = document.getElementById("article_subcategory");
      input.value = event.currentTarget.dataset.subcategory;
    });
  });
};



/***/ })
/******/ ]);
//# sourceMappingURL=select_category-7574e90ab75be834b0d0.js.map