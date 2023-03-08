Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/informations', to: 'pages#informations'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :rooms, only: %i[new create show] do
    resources :questions, only: [:show]
  end
end
