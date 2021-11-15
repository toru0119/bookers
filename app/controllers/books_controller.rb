class BooksController < ApplicationController
  def top
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to index_path
  end
  def update
    flash[:notice] = "Book was successfully updated."
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end

end
