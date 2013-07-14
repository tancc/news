class PostsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index, :show]
  def index
    @posts = Post.order('id DESC').all
    @post = Post.last
  end

  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to posts_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
    def post_params
      params[:post].slice(:title, :content, :source)
    end
end
