class Public::BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def show
    @boards = Board.all
    @board = Board.find(params[:id])
    @board_comment = BoardComment.new
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to boards_path
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    @board.update(board_params)
    redirect_to board_path(@board.id)
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end

  private
  def board_params
    params.require(:board).permit(:title, :sentence, :name)
  end

end