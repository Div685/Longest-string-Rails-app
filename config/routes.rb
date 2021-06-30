Rails.application.routes.draw do
  root 'algos#index'
  resources :users, only: [:new, :create]
  get '/users/:uname', to: "users#show"
  get 'sign_up' => 'users#new', as: 'sign_up'
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  get 'sign_out' => 'sessions#destroy', as: 'sign_out'
  resources :algos, only: [:index, :new, :create]
  get '/:name', to: "algos#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
