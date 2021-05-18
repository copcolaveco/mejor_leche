class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :business_name, :rut, :address, :identification_document, :phone_one, :phone_two, :location, :invoice_postal_code, :department_id, :secondary_user_types_id]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :business_name, :rut, :address, :identification_document, :phone_one, :phone_two, :location, :invoice_postal_code, :department_id, :secondary_user_types_id])
  end	
end
