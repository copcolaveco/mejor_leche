class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation, :remember_me, :business_name, :rut, :address, :identification_document, :phone_one, :phone_two, :location, :invoice_postal_code, :username, :secondary_user_type_id]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  end

  def from_user
    @secondary_user_type = SecondaryUserType.find(params[:secondary_user_type_id])
  end	
end
