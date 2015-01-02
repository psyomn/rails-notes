class BooksController < ApplicationController
  def current
    @book_ids = Book.all.collect(&:id)
    render xml: @book_ids
  end

  def of
    @book = Book.find(params[:id])
    render xml: @book
  end
end
