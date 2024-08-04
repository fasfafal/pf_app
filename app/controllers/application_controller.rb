class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    user_session_path(resource.id)
  end
end
