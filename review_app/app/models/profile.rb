class Profile < ApplicationRecord
  #has_one_attached :profilephoto
  has_attached_file :profilephoto
  belongs_to :user
  has_many :reviews
  validates :user_id, presence: true
  validates :fullname, presence: true
  validates :dob, presence: true
  validates :address, presence: true
  validates :citytown, presence: true
  validates :country, presence: true
    #validation on attachment, use do_not_validate_attachment_file_type if struggling
    validates_attachment :profilephoto,
    content_type: {content_type: /\Aimage\/.*\z/},
    size: {less_than: 1.megabyte}
end
