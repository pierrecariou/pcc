Rails.application.routes.draw do
  devise_for :users

  root to: 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [ :index, :show, :create ] do
    resources :comments, only: [ :new, :create ] do
      resources :sub_comments, only: [ :new, :create ]
    end
  end


  resources :articles do
    member do
      put "like", to: "articles#upvote"
    end
  end

  resources :users, only: [ :show ]
end
