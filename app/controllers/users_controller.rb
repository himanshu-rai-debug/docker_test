class UsersController < ApplicationController

  def new
    @user = User.new
  end
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "Successfully Created"
    else
      redirect_to new_user_path, notice: "Successfully Created"
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
