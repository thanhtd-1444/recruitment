class Admins::JobsController < Admins::BaseController
  before_action :load_job, except: %i(index new create)

  def index
    @jobs = Job.newest.page(params[:page]).per Settings.jobs.per_page
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new job_params

    if @job.save
      flash[:success] = t ".success"
      redirect_to admins_jobs_path
    else
      flash[:danger] = t ".failure"
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @job.update job_params
      flash[:success] = t ".success"
      redirect_to admins_jobs_path
    else
      flash[:danger] = t ".failure"
      render :edit
    end
  end

  def destroy
    if @job.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t ".failure"
    end

    redirect_to admins_jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:title, :quantity, :place, :salary, :content,
                                :start_date, :end_date, :working_hours, :allowance,
                                :salary_raise, :holiday, :vacation, :social_insurance,
                                :welfare, :documents
                                )
  end

  def load_job
    @job = Job.find_by id: params[:id]

    flash[:danger] = t("record.not_found", object_name: Job.name) unless @job
  end
end
