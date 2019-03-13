Rails.application.routes.draw do
  get '/users/sign_in', to: redirect("/sign-in")
  get '/users/sign_up', to: redirect("/sign-up")

  # Need to skip session and registration so that we can override them in devise_scope block
  # If we not do so then default route of devise continue to work
  devise_for :users, :skip => [:sessions, :registrations]

  # Override all required routes which you uses. There are another routes
  # which devise provide with session and registration which we skipped
  # above.
  # for session we have overridden all routes i.e new, create and destroy
  # for registration we have overrides only new and create but
  # registration has following default routes
  # cancel_user_registration GET      /users/cancel(.:format)   registrations#cancel
  #        user_registration POST     /users(.:format)          registrations#create
  #    new_user_registration GET      /users/sign_up(.:format)  registrations#new
  #   edit_user_registration GET      /users/edit(.:format)     registrations#edit
  #                          PATCH    /users(.:format)          registrations#update
  #                          PUT      /users(.:format)          registrations#update
  #                          DELETE   /users(.:format)          registrations#destroy
  devise_scope :user do
    get    "sign-in",  to: "devise/sessions#new",         as: :new_user_session
    post   "sign-in",  to: "devise/sessions#create",      as: :user_session
    delete "sign-out", to: "devise/sessions#destroy",     as: :destroy_user_session

    get    "sign-up",  to: "devise/registrations#new",    as: :new_user_registration
    post   "sign-up",  to: "devise/registrations#create", as: :user_registration
  end
  root to: 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [ :index, :show, :create ] do
    resources :comments, only: [ :new, :create ]
  end
  resources :articles do
    member do
      put "like", to: "articles#upvote"
    end
  end

  resources :users, only: [ :show ]
end
