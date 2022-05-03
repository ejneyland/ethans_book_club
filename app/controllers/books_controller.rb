class BooksController < ApplicationController
  def index
    # render json: Book.all
    @books = Book.all
  end

  def show
    begin
      @book = Book.find(params[:id])
    rescue
      render plain: "Book not found!"
    end
  end
end
