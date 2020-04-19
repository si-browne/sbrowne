class Product < ApplicationRecord
  has_attached_file :productphoto
  belongs_to :user
  has_many :reviews
  validates :user_id, presence: true
  validates :brand, presence: true
  validates :avgcost, presence: true
  validates :category, presence: true
  validates :releasedate, presence: true
  validates :description, presence: true
  validates_attachment :productphoto,
  content_type: {content_type: /\Aimage\/.*\z/},
  size: {less_than: 3.megabyte}
end