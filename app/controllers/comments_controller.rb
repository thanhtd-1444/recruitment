class CommentsController < ApplicationController
  before_action :load_post, only: :create

  def create
    @comment = @post.comments.new comment_params

    if @comment.save
      redirect_to post_path(@comment.post)
    else
      flash[:danger] = t ".failure"
    end
  end
  
  private

  def comment_params
    params.require(:comment).permit(:user_name, :content, :email)
  end

  def load_post 
    @post = Post.find_by id: params[:post_id]
    flash[:danger] = t("record.not_found", object_name: Post.name) unless @post
  end
end
