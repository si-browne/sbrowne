class Review < ApplicationRecord
    belongs_to :user
    belongs_to :product
    validates :user_id, presence: true
    validates :product_id, presence: true
    validates :author, presence: true
    validates :rating, presence: true
    validates :reviewcontent, presence: true
    validates :date, presence: true
end
