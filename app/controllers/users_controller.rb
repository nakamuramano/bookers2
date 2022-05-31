class UsersController < ApplicationController
    before_action :correct_user, only: [:edit]

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
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       flash[:notice] = "You have updated user successfully."
       redirect_to  user_path(@user.id)
    else
       render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to user_path(current_user.id) unless @user == current_user
  end


end
