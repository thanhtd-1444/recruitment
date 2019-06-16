class JobsController < ApplicationController
  before_action :load_job, only: :show

  def index
    @jobs = Job.available.newest.page(params[:page]).per Settings.posts.user_per_page
  end

  def show
    @job_comments = @job.job_comments.page(params[:page]).per Settings.posts.recent_page
    @job_comment = @job.job_comments.new
  end

  private
  def load_job
    @job = Job.find_by id: params[:id]

    unless @job
      flash[:danger] = t("record.not_found", object_name: Job.name)
      redirect_to root_path
    end
  end
end
