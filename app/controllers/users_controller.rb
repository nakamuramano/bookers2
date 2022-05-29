class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @book = Book.new

  end

  def show
    @user_id = User.find(params[:id])
    @books = @user_id.books
    @user = @user_id
    @book = Book.new

  end

  def edit
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to  user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end


end
