class Profile < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :fullname, presence: true
  validates :dob, presence: true
  validates :address, presence: true
  validates :citytown, presence: true
  validates :country, presence: true
end
