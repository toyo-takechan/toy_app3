class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        flash[:info] ="投稿に成功しました。" 
        redirect_to root_url     
      else
       render 'new'
      end
  end

  def show
    @post = Post.find_by()
  end

  def edit
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content )
  end
end
