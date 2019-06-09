class Admins::PostsController < Admins::BaseController
  before_action :load_post, except: %i(index new create)

  def index
    @posts = Post.newest.page(params[:page]).per Settings.posts.per_page
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    category = Category.find_by name: "Post"
    @post.category = category

    if @post.save
      redirect_to admins_posts_path
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
    if @post.update post_params
      flash[:success] = t ".success"
      redirect_to admins_posts_path
    else
      flash[:danger] = t ".failure"
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t ".failure"
    end

    redirect_to admins_posts_path
  end

  def publish
    if @post.update publish_status: params[:publish_status]
      flash[:success] = t(".success", action: params[:publish_status].camelize, post: @post.title)
    else
      flash[:danger] = t(".failure", action: params[:publish_status].camelize, post: @post.title)
    end

    redirect_to admins_posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image, :publish_status)
  end

  def load_post
    @post = Post.find_by id: params[:id]

    flash[:danger] = t("record.not_found", object_name: Post.name) unless @post
  end
end
