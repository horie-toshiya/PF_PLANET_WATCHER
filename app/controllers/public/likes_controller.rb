class Public::LikesController < ApplicationController
  before_action :authenticate_customer!

  def create
    @main_content = MainContent.find(params[:main_content_id])
    like = @main_content.likes.new(customer_id: current_customer.id)
    like.save
    redirect_to @main_content
  end

  def destroy
    @main_content = MainContent.find(params[:main_content_id])
    like = @main_content.likes.find_by(customer_id: current_customer.id)
    like.destroy
    redirect_to @main_content
  end

end
