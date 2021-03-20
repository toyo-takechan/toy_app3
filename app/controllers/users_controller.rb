class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "登録が成功しました。"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end


end
