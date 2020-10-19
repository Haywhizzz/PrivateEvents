class User < ApplicationRecord
  has_many :events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :registrations, foreign_key: 'attendee_id', class_name: 'Registration'
  has_many :attended_events, through: :registrations
  scope :past, -> { where(['date < ?', Date.today]) }
  scope :upcoming, -> { where(['date > ?', Date.today]) }

  validates :username, presence: true, uniqueness: true
end
