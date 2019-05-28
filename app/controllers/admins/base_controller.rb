class Admins::BaseController < ApplicationController
  layout "layouts/admin"

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end
end
