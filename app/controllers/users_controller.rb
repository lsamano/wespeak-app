class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user.id)
  end

  def show
  end

  def edit
  end

  def update
    @user.assign_attributes(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :bio)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
