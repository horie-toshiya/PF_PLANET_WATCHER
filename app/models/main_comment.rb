class MainComment < ApplicationRecord
  belongs_to :customer
  belongs_to :main_content
end
