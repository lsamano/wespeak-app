class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :check_if_logged_in, only: [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
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

  def check_if_logged_in
    unless @logged_in
      redirect_to new_login_path
    end
  end
end
