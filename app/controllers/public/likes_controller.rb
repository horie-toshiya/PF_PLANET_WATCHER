class Public::LikesController < ApplicationController
  before_action :authenticate_customer!

  def create
    @main_content = MainContent.find(params[:main_content_id])
    like = @main_content.likes.new(customer_id: current_customer.id)
    like.save
  end

  def destroy
    @main_content = MainContent.find(params[:main_content_id])
    like = @main_content.likes.new(customer_id: current_customer.id)
    like.destroy
  end

end
