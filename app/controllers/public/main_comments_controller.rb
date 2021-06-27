class Public::MainCommentsController < ApplicationController

  def create
    main_content = MainContent.find(params[:main_content_id])
    comment = current_customer.main_comments.new(main_comment_params)
    comment.main_content_id = main_content.id
    comment.save
    redirect_to main_content_path(main_content)
  end

  def destroy
    MainComment.find_by(id: params[:id], main_content_id: params[:main_content_id]).destroy
    redirect_to main_content_path(params[:main_content_id])
  end

  private

  def main_comment_params
    params.require(:main_comment).permit(:comment_content)
  end

end
