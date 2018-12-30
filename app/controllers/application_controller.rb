class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:name, :email, :password, :password_confirmation, :remember_me, :user_image, :user_image_content_type]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  
  def check_admin
    if current_user.admin != true
    redirect_to("/")
    end
  end
end