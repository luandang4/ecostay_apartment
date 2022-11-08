class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  layout Proc.new { |controller| controller.devise_controller? ? "devise/devise_custom_main" : "application"}

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def access_denied(exception)
    redirect_to admin_root_path, alert: exception.message
  end
end
