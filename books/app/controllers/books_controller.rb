class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def destroy
    setBook
    if @book.destroy
      flash[:success]="Delete Successful"
    end
    redirect_to books_path
  end
    
  def show
    setBook
  end
  def edit
    setBook
    
  end
  def create
    @book=Book.new(book_params)
    if @book.save
      flash[:success]="Create Successful"
    redirect_to books_path
    else 
      flash[:error]=@book.errors
      redirect_to books_path
    end
  end
  def new
    @book = Book.new
  end
  
  def update
    setBook 
    if @book.update(book_params)
      flash[:success]= "Update Successful"
    else 
      flash[:error] = @book.errors
    end
      redirect_to books_path
  end 

  def setBook
    @book=Book.find(params[:id])
  end

  private

  def book_params 
    params.require(:book).permit(:title, :author, :description, :url)
  end

end