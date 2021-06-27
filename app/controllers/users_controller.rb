class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to "/users/#{@user.uname}", notice: 'User was Successfully created'  }
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
