Rails.application.routes.draw do
  get 'task/index'
  get 'family/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :family

  resources :families, only: [:show] do
  resources :tasks
  end
end
