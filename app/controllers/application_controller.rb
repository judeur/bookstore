class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # to permit additional parameters
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    flash.now[:error] = "Access denied"
    render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
    #return 403.html
    #redirect_to main_app.root_url, :alert => exception.message
    #redirect_to root_url
  end

 protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:destroy) do |u|
      u.permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  end
end
