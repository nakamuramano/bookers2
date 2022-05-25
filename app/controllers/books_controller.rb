class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def creste
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = find(params[:id])
  end

  def edit
  end


  private

  def book_params
    params.require(:book).permeit(:title,:body,:image)
  end

end
