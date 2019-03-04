Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [ :index, :show, :create ] do
    resources :comments, only: [ :new, :create ]
  end
  resources :articles do
    member do
      put "like", to: "articles#upvote"
    end
  end
end
