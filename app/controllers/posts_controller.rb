class PostsController < ApplicationController
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
end
