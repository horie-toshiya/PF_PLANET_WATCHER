class MainContent < ApplicationRecord

  # belongs_to :customer
  has_many :main_comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def liked_by?(customer)
     likes.where(customer_id: customer.id).exists?
  end

  belongs_to :admins, optional: true
  attachment :image
end
