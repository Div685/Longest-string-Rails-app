class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(uname: params[:uname])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to new_algo_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    respond_to do |format|
      session[:user_id] = nil
      format.html { redirect_to root_path, notice: 'Logged Out' }
    end
  end

end
