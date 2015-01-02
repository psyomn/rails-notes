class BooksController < ApplicationController

  def all
    @books = Book.all
    render json: @books
  end

end
