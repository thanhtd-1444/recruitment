class JobCommentsController < ApplicationController
  before_action :load_post, only: :create

  def create
    @job_comment = @job.job_comments.new comment_params

    if @job_comment.save
      redirect_to job_path(@job_comment.job)
    else
      flash[:danger] = t ".failure"
    end
  end
  
  private

  def comment_params
    params.require(:job_comment).permit(:user_name, :content, :email)
  end

  def load_post 
    @job = Job.find_by id: params[:job_id]
    flash[:danger] = t("record.not_found", object_name: Job.name) unless @job
  end
end
