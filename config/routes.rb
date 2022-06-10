Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: "users/registrations",
                                   sessions: "users/sessions"}
  root "static_pages#index"

  resources :users, only: [:show, :index]
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/help'
  get 'static_pages/article'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
