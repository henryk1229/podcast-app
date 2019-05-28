class User < ApplicationRecord
  #validations
  before_save { self.email.downcase! }
  validates :first_name,  presence: true, length: { maximum: 50 }
  validates :last_name,  presence: true, length: { maximum: 50 }
  validates :username,  presence: true, length: { maximum: 50 },
                  uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  #relations
  has_many :favorites
  has_many :podcasts, through: :favorites

  #methods

  def full_name
    "#{self.first_name} "+"#{self.last_name}" 
  end
end
