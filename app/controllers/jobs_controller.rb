class JobsController < ApplicationController
  def index
    @jobs = Job.all.page(params[:page]).per Settings.posts.user_per_page
  end

  def show
    @job = Job.find_by id: params[:id]
  end
end
