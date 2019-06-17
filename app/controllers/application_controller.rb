class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || admins_admins_path
  end
end
