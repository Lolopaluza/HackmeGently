class CommentsController < ApplicationController
  before_action :find_commentable, only: :create
  respond_to :js

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    render json: { post: @post, comments: @comments }
  end

  def show
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    render json: { post: @post, comments: @comments }
  end

  def create
    @comment = @commentable.comments.new do |comment|
      comment.comment = params[:comment_text]
      comment.user = current_user
    end

    if @comment.save
      render json: { comment: @comment, location: comment_url(@comment), notice: 'Comment was successfully created.' }
    else
      render json: {errors: @comment.errors, notice: 'Try again' }
    end
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment_id = params[:id]
    if @comment.destroy
      render json: {comment: nil, notice: 'Comment was successfully deleted.' }
    else
      render json: {errors: @comment.errors, notice: 'Try again' }
  end

  private
  def find_commentable
    @commentable_type = params[:commentable_type].classify
    @commentable = @commentable_type.constantize.find(params[:commentable_id])
  end
end
end
