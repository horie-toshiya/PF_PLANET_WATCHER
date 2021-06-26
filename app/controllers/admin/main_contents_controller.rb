class Admin::MainContentsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @main_contents = MainContent.all
  end

  def show
    @main_content = MainContent.find(params[:id])
    @main_comment = MainComment.new
  end

  def new
    @main_content = MainContent.new
  end

  def create
    @main_content = MainContent.new(main_content_params)
    @main_content.admin_id = current_admin.id
    if @main_content.save
    redirect_to admin_main_contents_path
    else
      render :new
    end
  end

  def edit
    @main_content = MainContent.find(params[:id])
  end

  def update
    @main_content = MainContent.find(params[:id])
    @main_content.update(main_content_params)
    redirect_to admin_main_content_path(@main_content.id)
  end

  def destroy
    @main_content = MainContent.find(params[:id])
    @main_content.destroy
    redirect_to admin_main_contents_path
  end


  private
  def main_content_params
    params.require(:main_content).permit(:facility, :time, :appeal, :fee, :address, :access, :admin_id)
  end

end
