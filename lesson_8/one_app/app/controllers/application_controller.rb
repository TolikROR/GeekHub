class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_admin

  private

  def current_admin
    @current_user.admin if current_user
  end

  protected

  def configure_permitted_parameters
    attributes = [:email, :password, :password_confirmation, :avatar]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

end
