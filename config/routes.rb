Rails.application.routes.draw do
  resources :postulations
  resources :publications
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }


  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "publications#index"
   get "/publications", to: "publications#index", as: "user_root"
  get "/homes", to: "homes#formulario"
end
