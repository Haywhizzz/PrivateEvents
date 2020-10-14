class User < ApplicationRecord
  has_many :events, foreign_key: 'creator_id'
  has_many :guests, foreign_key: 'attendee_id'
  has_many :attended_events, through: :guests

  validates :username, presence: true
end