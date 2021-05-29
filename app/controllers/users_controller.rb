class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy,  :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
  def index
    @users = User.page(params[:page]).per(5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.send_activation_email
      flash[:info] = "メールをチェックしてアカウントを有効にしてください。"
      redirect_to root_url
      # log_in @user
      # flash[:notice] = "登録できました。"
      # redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    # @posts = @user.posts.paginate(page: params[:page])
    # @posts = @user.posts(params[:id])
    # @posts = @user.Post.page(params[:page]).per(5)
    @posts = @user.posts.page(params[:page]).per(1)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:sucsess] = "プロフィールを更新しました。"
      redirect_to @user
    else
      render 'edit'
    end

  end

  def destroy
    User.find(params[:id]).destroy
    flash[:sucsess] = "ユーザーを削除しました。"
    redirect_to users_url
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                     :password_confirmation)
  end


  # beforeアクション
    

    # 正しいユーザーかどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # 管理者かどうか確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
