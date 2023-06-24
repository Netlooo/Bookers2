Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit,]
  resources :books, only: [:new, :index, :show, :create,]
  root to: "homes#top"
  devise_for :users
  get "/about" => "homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
