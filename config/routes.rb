Rails.application.routes.draw do
    devise_for :users
    root to: "homes#top"
    get "homes/about" => "homes#about"
    resources :books, only: [:new,:index,:show,:edit,:create,]
    resources :users, only: [:index,:show,:edit,]

end
