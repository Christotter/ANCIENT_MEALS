Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/cookbook", to: "pages#cookbook"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:show, :index, :create, :new] do
    resources :user_favorites, only: [:create]
    resources :user_ratings, only: [:create, :update]
  end

  resources :user_favorites, only: :destroy
end
