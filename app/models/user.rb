class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  # Validations
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum:6, maximum:50}
  validates :password_confirmation, presence: true
  validates_confirmation_of :password

  # Callbacks
  before_save do |user|
    user.email = email.downcase
  end

  # Behavior
  has_secure_password


end