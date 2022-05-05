class BooksController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :find_book, only: [:show, :update, :destroy, :edit]
  # except: [:index, :create, :new] (only is probably a better option)
  before_action :find_author, only: [:new, :edit]

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

  def new
    @book = Book.new #(book_params)
    # @authors = Author.order(:last_name)
  end

  def create
    book = Book.create!(book_params)
    redirect_to book
  end

  def edit
    # @authors = Author.order(:last_name)
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

  def find_author
    @authors = Author.order(:last_name)
  end

  def book_params
    return params.require(:book).permit(:title, :author_id)
  end
end
