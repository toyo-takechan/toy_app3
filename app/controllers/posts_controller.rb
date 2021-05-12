class PostsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: :destroy

  def index
    # @posts = Post.all
    # カミナリ実装
    @posts = Post.all.page(params[:page]).per(2)
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
        redirect_to user_path(current_user)     
        # redirect_to @user      
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
    @post.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to request.referrer || root_url
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :image )
  end

  def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
  end
  
end
