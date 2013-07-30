class Manage::PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        if params[:save_and_publish_button]
          @post.confirm_publish
        end
        format.html { redirect_to [:manage, @post], notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update_attributes(params[:post])
        if params[:save_and_publish_button]
          @post.confirm_publish
        end
        format.html { redirect_to [:manage, @post], notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to manage_posts_url }
      format.json { head :no_content }
    end
  end

  def change
    post = Post.find(params[:id])
    case params[:event]
    when "unpublish"
      post.confirm_unpublish
    when "publish"
      post.confirm_publish
    end
    redirect_to(:back)
  end
end
