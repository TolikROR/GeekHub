class PostsController < ApplicationController
  before_action :current_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)

    redirect_to posts_path
  end

  def show; end

  def update
    @post.update(post_params)

    redirect_to @post
  end

  def destroy
    @post.destroy

    redirect_to posts_path
  end

  private

  def current_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
