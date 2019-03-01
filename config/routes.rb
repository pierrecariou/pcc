Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments, only: [:new, :create]
  end
end
