class Api::V1::BooksController < ApplicationController
  before_action :authenticate_user!
  befotr_action :set_book, only: [:update, :show, :destory]

  def index
    @books = current_user.books
    render json: @books
  end

  def show
    render json: @book
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def update
    if @book.update
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destory
    @book.destory
    head :no_content
  end

  private

  def set_book
    @book.find_by(id: params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :user_id)
  end
end
