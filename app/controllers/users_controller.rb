class UsersController < ApplicationController
  skip_before_action :authorized, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to new_algo_path, notice: 'User was Successfully created' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @user = User.find_by(uname: params[:uname])
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :uname, :password)
  end
end
