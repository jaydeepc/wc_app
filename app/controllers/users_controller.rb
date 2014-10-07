class UsersController < ApplicationController
  def create
    @user = User.new user_params
    unless @user.valid?
      render action: 'edit'
    end
  end

  def index
    @user = User.new
  end

  def user_params
    params.require(:user).permit :email
  end
end
