Rails.application.routes.draw do
  get 'task/index'
  get 'family/show'
  devise_for :users
  root to: 'pages#home'

 # WARNING : don't forget to change this line to after development- resource :family, only: [:show], as: :current_profile do

  resource :family, only: [:show]
    resources :tasks
  end

