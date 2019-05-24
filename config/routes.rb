Rails.application.routes.draw do
  devise_for :users

  root to: 'articles#index', date_from: -7.days.from_now
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [ :index, :show, :create ] do
    resources :comment_articles, only: [ :new, :create ]
  end

  resources :comments, only: [:create, :index, :show] do
    resources :sub_comments, only: [ :new, :create ] do
      resources :answers, only: [ :new, :create ]
    end
  end



  resources :articles do
    member do
      put "like", to: "articles#upvote"
    end
  end

  resources :comment_articles do
    member do
      put "like", to: "comment_articles#upvote"
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
