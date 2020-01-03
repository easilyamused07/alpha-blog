class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the Alpha Blog #{@user.username}!"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.Update(user_params)
      flash[:notice] = "Your account was updated successfully"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
