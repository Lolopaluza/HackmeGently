class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_commentable, only: :create
  respond_to :js

  def create
    @comment = @commentable.comments.new do |comment|
      comment.comment = params[:comment_text]
      comment.user = current_user
    end

    if @comment.save
      render json: { comment: @comment, location: comment_url(@comment)}, status: :created
    else
      render json: {errors: @comment.errors}, status: :unproccessable_entity
    end
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment_id = params[:id]
    if @comment.destroy
      render json: {comment: nil}, status: :accepted
    else
      render json: {errors: @comment.errors}, status: :unproccessable_entity
  end

  private
  def find_commentable
    @commentable_type = params[:commentable_type].classify
    @commentable = @commentable_type.constantize.find(params[:commentable_id])
  end
end
