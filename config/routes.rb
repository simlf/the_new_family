Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :family, only: [:new, :destroy, :show, :edit, :update, :create]

  resources :family, only: [:show] do
    resources :tasks
  end
end
