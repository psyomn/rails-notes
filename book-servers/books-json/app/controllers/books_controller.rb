class BooksController < ApplicationController

  def all
    @books = Book.all
  end

end
