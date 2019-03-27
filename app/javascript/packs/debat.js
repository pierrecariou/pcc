// const debatTitles = document.querySelectorAll('.title-comment');
// const debats = document.querySelectorAll('.user-comment-card');


// function hideOtherDebates() {
//   const debatTitle = document.querySelector('.title-comment');
//   if (debatTitle) {
//     debatTitle.classList.add('active');
//   }
//   debats.forEach((debat) => {
//     if (debat.querySelector('.title-comment').innerText.trim() != debatTitle.innerText.trim()) {
//       debat.style.display = "none";
//     }
//   });


//   debatTitles.forEach((title) => {
//     title.addEventListener('click', (event) => {
//       debatTitles.forEach((title) => {
//         title.classList.remove('active');
//       });
//       title.classList.add('active');
//       debats.forEach((debat) => {
//         debat.style.display = "none";
//         const titleInsideDebat = debat.querySelector('.title-comment')
//        if (titleInsideDebat.innerText.trim() === event.currentTarget.innerText.trim()) {
//           debat.style.display = "block";
//         }
//       });
//     });
//   });
// };

// export { hideOtherDebates };


// <% if !current_page?(:controller => 'articles', :action => 'show', :id => article.id) %>
//       <div class="debat-button" ><%= link_to 'DEBATTRE', article_path(article) %></div>
//       <% end %>
//       <% if article.by_user_upvotes.any? {|by_user_upvote| by_user_upvote.user_first_name == current_user.first_name}%>
//       <div data-article-arrow="<%= article.id %>" class="up-arrow"><%= link_to '<i class="fas fa-caret-up"></i>'.html_safe, like_article_path(article), method: :put, remote: true %></div>
//       <% else %>
//         <div data-article-arrow="<%= article.id %>"><%= link_to '<i class="fas fa-caret-up"></i>'.html_safe, like_article_path(article), method: :put, remote: true %></div>
//       <%end %>
//       <div  class="card-up" data-article="<%= article.id %>"><%= article.upvotes %> </div>
