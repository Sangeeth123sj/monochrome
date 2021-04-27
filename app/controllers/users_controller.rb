class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :mobile))
    if @user.save
      redirect_to articles_path
    else
      render 'new'
    end
  end
end
