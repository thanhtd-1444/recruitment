class StaticPagesController < ApplicationController
  def home
    @posts = Post.newest.limit 6
    @jobs = Job.limit 5
  end

  def help; end

  def about; end

  def contact; end

  def bussiness_content; end

  def recruitment_benefit; end

  def specific_skills; end

  def engineer_interpreter; end

  def download_pdf
    send_file(
      "#{Rails.root}/public/特定技能について.pdf",
      filename: "特定技能について.pdf",
      type: "application/pdf"
    )
  end
end
