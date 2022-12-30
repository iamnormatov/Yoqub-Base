Rails.application.routes.draw do
  resources :vazifas
  resources :xabardors
  resources :xabars do
  resources :xabardors
    
  end
  resources :biriktirs
  authenticated :user, ->(user) { user.admin? || user.user? } do
# 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
  resources :projects do
  resources :biriktirs
  resources :xabars
  resources :vazifas
  end
  resources :posts
  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
