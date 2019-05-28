class User < ApplicationRecord
  has_many :favorites
  has_many :podcasts, through: :favorites
end
