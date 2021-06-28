class Board < ApplicationRecord
   belongs_to :customer
   has_many :post_comments, dependent: :destroy
   has_many :board_comments, dependent: :destroy
end
