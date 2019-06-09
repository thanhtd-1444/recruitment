class StaticPagesController < ApplicationController
  def home
    @posts = Post.newest.limit 6
  end

  def help; end

  def about; end

  def contact; end

  def bussiness_content; end

  def recruitment_benefit; end

  def recruitment_market; end
end
