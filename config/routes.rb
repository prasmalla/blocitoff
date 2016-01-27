Rails.application.routes.draw do

  root 'users#signup'
  
  devise_for :users, controllers: { registrations: 'registrations' }, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :users, only: [:show]
end
