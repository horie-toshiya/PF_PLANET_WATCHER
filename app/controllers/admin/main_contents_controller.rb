class Admin::MainContentsController < ApplicationController

  def index
    @main_contents = MainContent.all
  end

  def show
    @main_content = MainContent.find(params[:id] )
  end

  def new
    @main_content = MainContent.new
  end

  def create
    main_content = MainContent.new(main_content_params)
    main_content.save
    redirect_to admin_main_contents_path(main_content.id)
  end

  def edit
  end

  private
  def main_content_params
    params.require(:main_content).permit(:facility, :time, :appeal, :fee, :address, :access)
  end

end
