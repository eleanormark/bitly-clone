class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for signing up!"
      redirect_to "/users/#{@user.id}"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @url = @user.shortened_urls.new
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
