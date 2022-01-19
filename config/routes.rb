Rails.application.routes.draw do
  # devise_for :users
  get 'welcome/index'
  root 'articles#index'
  resources :articles
  # devise_for :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  
resources :articles do
  resources :comments
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
