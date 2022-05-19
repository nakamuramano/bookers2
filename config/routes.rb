Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/show'
  root to: "homes#top"
  devise_for :users
  get "homes/about" => "homes#about", as: "about"
  resources :user, only: [:show,:edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
