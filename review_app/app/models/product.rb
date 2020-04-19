class Product < ApplicationRecord
  #has_one_attached :productpicture
  has_attached_file :productpicture
  belongs_to :user
  has_many :reviews
  validates :brand, presence: true
  validates :avgcost, presence: true
  validates :category, presence: true
  validates :releasedate, presence: true
  validates :description, presence: true
end
