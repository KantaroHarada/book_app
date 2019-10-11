class BooksController < ApplicationController

  def new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:success] = "Profile updated"
      redirect_to @book
    else
      render 'edit'
    end
  end

  def search
     #Viewのformで取得したパラメータをモデルに渡す
     @books = Book.search(params[:search])
  end

  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Book deleted"
    redirect_to users_url
  end

end

private

    def book_params
      params.require(:book).permit(:title, :author, :publisher,
                                   :genre)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
