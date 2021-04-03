class PostsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # 
    @post = current_user.posts.build(post_params)
    @post.image.attach(params[:post][:image])
      if @post.save
        flash[:info] ="投稿に成功しました。" 
        redirect_to root_url     
        # redirect_to @user    
        # redirect_to @post    
      else
       render 'new'
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :image )
  end
end
