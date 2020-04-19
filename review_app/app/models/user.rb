class User < ApplicationRecord
  has_attached_file :userphoto
  has_secure_password
  validates_uniqueness_of :email
  has_one :profile
  has_many :reviews
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  #validation on attachment, use do_not_validate_attachment_file_type if struggling
  validates_attachment :userphoto,
  content_type: {content_type: /\Aimage\/.*\z/},
  size: {less_than: 1.megabyte}
end
