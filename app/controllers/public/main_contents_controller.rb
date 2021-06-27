class Public::MainContentsController < ApplicationController
  def index
    @main_contents = MainContent.all
  end

  def show
    @main_contents = MainContent.all
    @main_content = MainContent.find(params[:id])
    @main_comment = MainComment.new
    # @main_comments = @main_content.main_comments
  end

  private
  def main_content_params
    params.require(:main_content).permit(:facility, :time, :appeal, :fee, :address, :access)
  end

end