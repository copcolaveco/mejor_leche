Rails.application.routes.draw do
  resources :estates
  resources :payrolls
  resources :has_estates
  resources :reports do
    collection do
      get 'estate_selection'
    end
  end
  delete 'has_estates', action: :delete, controller: 'has_estates', defaults: { format: 'json' }
  devise_for :users

  # get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "estates/user/:user_id", to: "estates#from_user"
  get "payrolls/estate/:user_id", to: "payrolls#from_estate"
  get "payrolls/rodeos_main_breed/:rodeos_main_breed_id", to: "payrolls#from_rodeos_main_breed"
  get "payrolls/user/secondary_user_type/:secondary_user_type_id", to: "payrolls#from_user_user_type"
  get "reports/update_graphics" => 'reports#update_graphics', as: "update_graphics"

end
