class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_book, except: [:index, :create] #only: [:show, :update, :destroy]

  def index
    # render json: Book.all
    @books = Book.all
  end

  def show
    begin
      # @book = Book.find(params[:id])
    rescue
      render plain: "Book not found!"
    end
  end

  def create
    book = Book.create(book_params)
    redirect_to book
  end

  def update
    # @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to @book
  end

  def destroy
    # @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private 

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    return params.permit(:title, :author_id)
  end
end
