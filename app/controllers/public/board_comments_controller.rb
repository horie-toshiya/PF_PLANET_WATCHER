class Public::BoardCommentsController < ApplicationController

  def create
    board = Board.find(params[:board_id])
    comment = current_customer.board_comments.new(board_comment_params)
    comment.board_content_id = board_content.id
    comment.save
    redirect_to bord_path(board)
  end

  def destroy
  end

  private

  def bord_comment_params
    params.require(:bord_comment).permit(:comment_content)
  end

end
