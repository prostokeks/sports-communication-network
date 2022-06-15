Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: "users/registrations",
                                   sessions: "users/sessions"}
  root "static_pages#index"

  resources :sport_tables
  resources :users, only: [:show, :index]

  get "about", to: 'static_pages#about'
  get "contact", to: 'static_pages#contact'
  get "help", to: 'static_pages#help'
  get "article", to: 'static_pages#article'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
