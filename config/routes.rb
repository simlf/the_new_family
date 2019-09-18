Rails.application.routes.draw do
  devise_for :users, controllers: { invitations: 'users/invitations', registrations: 'users/registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resource :family
 resources :tasks
end
