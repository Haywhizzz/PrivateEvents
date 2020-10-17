# frozen_string_literal: true

class User < ApplicationRecord
  has_many :events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :guests, foreign_key: 'attendee'
  has_many :attended_events, through: :guests
  scope :past, -> { where(['date < ?', Date.today]) }
  scope :upcoming, -> { where(['date > ?', Date.today]) }

  validates :username, presence: true
end
