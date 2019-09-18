Rails.application.routes.draw do

  devise_for :users
  root to: 'families#show'

 # WARNING : don't forget to change this line to after development- resource :family, only: [:show], as: :current_profile do

  # resources :families, only: :show
  resource :family, only: [:show], as: :current_profile do
    # resource :family, only: [:show]

    resources :tasks
  end
end

