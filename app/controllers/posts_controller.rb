class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:id])
    @post.title = params[:title]
    @post.text = params[:text]
    @post.author_id = current_user.id
    if @post.save
      flash[:notice] = 'Post successfully created'
      redirect_to user_posts_path
    else
      render 'new'
    end
  end
end
