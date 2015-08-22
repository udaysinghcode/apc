class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    # load up new.html.haml with @post
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      # if saved redirect to posts#show
      redirect_to @post
    else
      # render new.html.haml
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :link, :description)
  end
end
