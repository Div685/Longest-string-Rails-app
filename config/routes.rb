Rails.application.routes.draw do
  root 'users#new'
  resources :users, only: [:new, :create]
  get '/users/:uname', to: "users#show", as: 'sign_user'
  get 'sign_up' => 'users#new', as: 'sign_up'
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  get 'sign_out' => 'sessions#destroy', as: 'sign_out'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
