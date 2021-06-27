Rails.application.routes.draw do
  # get 'users/index'
  root 'users#new'
  resources :users, only: [:new, :create]
  get '/users/:uname', to: "users#show"
  get 'sign_up' => 'users#new', as: 'sign_up'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
