class BoardComment < ApplicationRecord
  belongs_to :customer
  belongs_to :board
end
