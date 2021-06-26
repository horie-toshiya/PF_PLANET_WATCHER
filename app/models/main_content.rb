class MainContent < ApplicationRecord

  # belongs_to :customer
  has_many :main_comments, dependent: :destroy

  belongs_to :admins, optional: true

end
