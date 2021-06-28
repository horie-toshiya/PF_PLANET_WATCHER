class Public::BoardCommentsController < ApplicationController

  def create
    board = Board.find(params[:board_id])
    @comment = BoardComment.new(board_comment_params)
    @comment.customer_id = current_customer.id
    # comment = current_customer.board_comments.new(board_comment_params)
    # comment.board_content_id = board_content.id
    @comment.save
    redirect_to board_path(board)
  end

  def destroy
    BoardComment.find_by(id: params[:id], board_id: params[:board_id]).destroy
    redirect_to board_path(params[:board_id])
  end

  private

  def board_comment_params
    params.permit(:board_id, :comment_content)
  end

end
