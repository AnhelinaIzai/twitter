class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_up_path_for(_resource)

   new_profile_path
  end
end
