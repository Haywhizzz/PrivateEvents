# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :registrations, foreign_key: 'attended_event_id'
  has_many :attendees, through: :registrations
  # has_many :registrations
  scope :past, -> { where(['date < ?', Date.today]) }
  scope :upcoming, -> { where(['date > ?', Date.today]) }

  validates :name, :attendee_id, :description, :location, :date, presence: true, uniqueness: true
  
end
