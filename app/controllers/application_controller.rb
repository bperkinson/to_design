class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_device_type

private

  def authenticate_admin!
	if user_signed_in? && current_user.admin?
  		true
  	else
  		redirect_to "/", notice: "Sorry you need to be an admin user to access this page."
  	end
  end

  def set_device_type
    request.variant = :phone if browser.device.mobile?
  	request.variant = :tablet if browser.device.tablet?
  end

end
