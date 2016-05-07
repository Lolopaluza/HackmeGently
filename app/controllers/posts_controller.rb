class PostsController < ApplicationController

  def index
    @posts = Post.order(created_at: :asc)
    render json: { posts: @posts }
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      render json: { post: @post, location: post_url(@post), notice: 'Post was successfully created.' }
    else
      render json: { errors: @post.errors, notice: 'Try again' }
    end
  end

  def show
    @post = Post.find(params[:id])
    render json: { post: @post }
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      render json: { post: @post, notice: 'Post was successfully created.' }
    else
      render json: { errors: @post.errors, notice: 'Try again' }
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      render json: { post: nil, notice: 'Post was succesfully destroyed' }
    else
      render json: { errors: @post.errors, notice: 'Try again' }
    end
  end

  protected

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
