Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about"
  resources :users, only: [:index,:show,:update]
  resources :books, only: [:new,:index,:show,:edit,:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
