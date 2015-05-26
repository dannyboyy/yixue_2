class ApplicationController < ActionController::Base
  # Include Punit for user authorization
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # customize route: redirect to episodes#index after successful sign in
  def after_sign_in_path_for(users)
    episodes_path
  end

  # Redirect user to episodes_path if user is not authorized (Pundit gem)
  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to episodes_path, alert: exception.message
  end

end
