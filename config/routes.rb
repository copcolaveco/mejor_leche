Rails.application.routes.draw do
  resources :estates 
  resources :payrolls
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "estates/user/:user_id", to: "estates#from_user"
end
