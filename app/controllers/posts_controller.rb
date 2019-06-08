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
  end
end
