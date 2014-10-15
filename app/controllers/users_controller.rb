class UsersController < ApplicationController
  def create
    @user = User.new user_params
    @user.save
    render 'landing_page/success'
  end

  def user_params
    params.require(:user).permit :email
  end
end
