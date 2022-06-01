Rails.application.routes.draw do
    devise_for :users
    root to: "home#top"
    get "home/about" => "home#about"
    resources :books, only: [:new, :index, :show, :edit, :create, :update, :destroy]
    resources :users, only: [:index,:show,:edit, :update]

end
