Rails.application.routes.draw do
  devise_for :players
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"

  resources :gamerooms
  resources :messages
end
