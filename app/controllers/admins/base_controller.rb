class Admins::BaseController < ApplicationController
  layout "admin"

  skip_before_action :verify_authenticity_token
  before_action :authenticate_admin!
end
