Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  # Defines the root path route ("/")
  root "users#home"

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :show, :create, :destroy]
      resources :likes, only: [:create]
    end
  end

  get '/recent_posts', to: 'posts#recent_posts'
  get '/all_posts', to: 'posts#all_posts'
  get '/users/:user_id/posts/:post_id/delete_post', to: 'posts#delete_post', as: 'delete_post_modal'
end
