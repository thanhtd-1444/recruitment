class Admins::PostsController < Admins::BaseController
  def index
    @posts = Post.newest.page(params[:page]).per Settings.posts.per_page
  end
end
