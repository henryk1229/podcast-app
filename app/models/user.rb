class User < ApplicationRecord
  before_create :set_default_avatar

  #validations
  before_save { self.email = email.downcase }
  validates :first_name,  presence: true, length: { maximum: 50 }
  validates :last_name,  presence: true, length: { maximum: 50 }
  validates :username,  presence: true, length: { maximum: 50 },
                  uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  #attr_accessors
  attr_accessor :remember_token

  #relations
  has_many :favorites, dependent: :destroy
  has_many :podcasts, through: :favorites
  has_many :active_follows, class_name:  "Follow",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :passive_follows, class_name:  "Follow",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_follows, source: :followed
  has_many :followers, through: :passive_follows, source: :follower

  #basic methods

  def full_name
    "#{self.first_name} "+"#{self.last_name}"
  end

  def set_default_avatar
    baccano_id = Digest::MD5::hexdigest(rand(1..100).to_s)
    self.img_url = "https://avatar.baccano.io/#{baccano_id}"
  end

  def avatar
    self.img_url
  end


  #login/auth

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    if remember_digest.nil?
      false
    else
      BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  #relationship methods

  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end

  def active_follows_ids
    self.active_follows.map { |a_f| a_f.followed_id }
  end

  #podcast methods

  def add_favorite(podcast)
    podcasts << podcast
  end

  def remove_favorite(podcast)
    podcasts.delete(podcast)
  end

  def podcasts?(podcast)
    podcasts.include?(podcast)
  end


end
