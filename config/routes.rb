Rails.application.routes.draw do


  devise_for :users, controllers: {registrations: "users/registrations",
                                   sessions: "users/sessions"}
  root "static_pages#index"

  resources :sport_tables
  resources :users, only: [:show, :index]
  resources :articles do
    resources :coments
  end
  resources :contacts, only: [:new, :index, :destroy, :create]
  resources :rooms do
    resources :chats
  end

  get "about", to: 'static_pages#about'
  get "help", to: 'static_pages#help'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
