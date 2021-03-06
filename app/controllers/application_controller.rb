class ApplicationController < ActionController::Base
  before_action :setup

  def setup
    @logged_in = !!session[:user_id] #!= nil
    if @logged_in
      @current_user = User.find(session[:user_id])
      @current_user_id = @current_user.id
    end
  end

  # def logged_in?
  #   !!session[:user_id]
  # end
  #
  # def current_user
  #   User.find(session[:user_id])
  # end

  def log_in_user(user_id)
    session[:user_id] = user_id
  end

  def log_out_user
    session[:user_id] = nil
  end

  def home
    redirect_to posts_path
  end

end
