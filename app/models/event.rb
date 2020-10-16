class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :guests, foreign_key: 'attended_event_id'
  has_many :attendees, through: :guests
  has_many :registrations
  scope :past, -> { where(['date < ?', Date.today]) } 
  scope :upcoming, -> { where(['date > ?', Date.today]) } 

  validates :name, :description, :location, :date, presence: true
end