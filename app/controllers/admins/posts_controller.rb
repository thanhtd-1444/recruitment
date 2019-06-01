class Admins::PostsController < Admins::BaseController
  def index
    @posts = Post.newest.page(params[:page]).per Settings.posts.per_page
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.category_id = 1
    @post.save
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image, :publish_status)
  end
end
