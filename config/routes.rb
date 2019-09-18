Rails.application.routes.draw do
  get 'task/index'
  get 'family/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 # WARNING : don't forget to change this line to after development- resource :family, only: [:show], as: :current_profile do

  resource :family, only: [:show], as: :current_profile do
    resources :tasks

  end
end
