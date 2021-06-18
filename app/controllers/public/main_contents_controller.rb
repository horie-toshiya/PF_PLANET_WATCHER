class Public::MainContentsController < ApplicationController
  def index
    @main_contents = MainContent.all
  end

  def show
    @main_contents = MainContent.all
    @main_content = MainContent.find(params[:id])
  end

  private
  def main_content_params
    params.require(:main_content).permit(:facility, :time, :appeal, :fee, :address, :access)
  end

end