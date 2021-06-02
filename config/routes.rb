Rails.application.routes.draw do
  resources :estates 
  resources :payrolls
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "estates/user/:user_id", to: "estates#from_user"
  get "payrolls/estate/:user_id", to: "payrolls#from_estate"
  get "payrolls/rodeos_main_breed/:rodeos_main_breed_id", to: "payrolls#from_rodeos_main_breed"
  get "payrolls/user/secondary_user_type/:secondary_user_type_id", to: "payrolls#from_user_user_type"

end
