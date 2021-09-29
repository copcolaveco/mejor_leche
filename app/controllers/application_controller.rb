class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
before_action :set_user_type, only: %i[ show edit update destroy ]

  protected

  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation, :remember_me, :business_name, :rut, :address, :identification_document, :phone_one, :phone_two, :location, :invoice_postal_code, :username, :secondary_user_type_id, :user_type_id]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  end
	
  def set_user_type
    @user_type = UserType.find(current_user.user_type_id)
  end

end
