class PostsController < ApplicationController
  def index
    @posts = Post.newest.page(params[:page]).per Settings.posts.per_page
  end

  def show
    @post = Post.find_by id: params[:id]
  end
end
