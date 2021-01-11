class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @blog = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(blog.id)
  end
  
  
  private
  def book_params
    params.permit(:title, :body)
  end 
  
end

