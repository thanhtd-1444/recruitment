class PostsController < ApplicationController
  before_action :load_post, only: :show

  def index
    @posts = Post.publish.newest.page(params[:page]).per Settings.posts.user_per_page
  end

  def show
    @post =
      if current_admin
        Post.find_by id: params[:id]
      else
        Post.publish.find_by id: params[:id]
      end
    @recent_posts = Post.publish.newest.limit(Settings.posts.recent_page)
    @comments = @post.comments.page(params[:page]).per Settings.posts.recent_page
    @comment = @post.comments.new
  end

  private
  def load_post
    @post = Post.find_by id: params[:id]

    unless @post
      flash[:danger] = t("record.not_found", object_name: Post.name)
      redirect_to root_path
    end
  end
end
