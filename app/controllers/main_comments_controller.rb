class MainCommentsController < ApplicationController

  def create
    main_content = MainContent.find(params[:main_content_id])
    comment = current_user.main_comments.new(main_comment_params)
    comment.main_content_id = main_content.id
    comment.save
    redirect_to main_content_path(main_content)
  end

  def destroy
  end

  private

  def main_comment_params
    params.require(:main_comment).permit(:comment)
  end

end
