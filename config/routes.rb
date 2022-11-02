Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "users#index"

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: :index
    end
  end
end
