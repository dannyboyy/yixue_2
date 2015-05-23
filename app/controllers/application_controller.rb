class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # customize route: redirect to episodes#index after successful sign in
  def after_sign_in_path_for(users)
    episodes_path
  end

end
