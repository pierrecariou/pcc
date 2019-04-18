Rails.application.routes.draw do
  devise_for :users

  root to: 'articles#index', date_from: -7.days.from_now
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [ :index, :show, :create ]

  resources :comments, only: [:create, :index, :show] do
    resources :sub_comments, only: [ :new, :create ]
  end


  resources :articles do
    member do
      put "like", to: "articles#upvote"
    end
  end

  resources :comments do
    member do
      put "like", to: "comments#upvote"
    end
  end

  resources :sub_comments do
    member do
      put "like", to: "sub_comments#upvote"
    end
  end

  resources :users, only: [ :show ]
end
