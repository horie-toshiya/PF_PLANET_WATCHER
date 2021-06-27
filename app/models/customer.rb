class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :board_comments, dependent: :destroy
  has_many :main_comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end


