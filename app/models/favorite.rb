class Favorite < ApplicationRecord

  #validations
  validates :user_id, presence: true

  #display descending
  default_scope -> { order(created_at: :desc) }

  #relations
  belongs_to :user
  belongs_to :podcast

end
