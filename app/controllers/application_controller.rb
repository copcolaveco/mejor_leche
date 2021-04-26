class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :USER]
  	devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
  	devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :dicose, :business_name, :rut, :address, :identification_document, :phone_one, :phone_two, :location, :department, :invoice_postal_code, :user_type_id])
  end
end
