class Review < ApplicationRecord
    belongs_to :user
    belongs_to :product
    validates :author, presence: true
    validates :rating, presence: true
    validates :reviewcontent, presence: true
    validates :date, presence: true
end
