# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController

  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :business_name, :rut, :address, :identification_document, :phone_one, :phone_two, :location, :invoice_postal_code, :department_id, :secondary_user_types_id]
  #   devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
  #   devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :business_name, :rut, :address, :identification_document, :phone_one, :phone_two, :location, :invoice_postal_code, :department_id, :secondary_user_types_id])
  # end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  # #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
