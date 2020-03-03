class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:ceremony).permit(:email, :encrypted_password)
  end
end
