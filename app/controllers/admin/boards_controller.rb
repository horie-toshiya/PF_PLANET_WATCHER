class Admin::BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @boards = Board.all
    @board = Board.find(params[:id])
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to admin_boards_path
  end

  private
  def board_params
    params.require(:board).permit(:title, :sentence, :name, :board_id, :created_at, :board_id)
  end

end
