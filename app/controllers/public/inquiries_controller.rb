class Public::InquiriesController < ApplicationController

  def index
    @inquiries = Inquiry.all
  end

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.save
    redirect_to inquiries_complete_path
  end

  def complete
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message,)
  end

end
