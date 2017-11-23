class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_admin

  private

  def current_admin
    @current_user.admin
  end
end
