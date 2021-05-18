class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_attendees, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendees, source: :event

  scope :past, -> { where('date < ?', Date.today).order(date: :desc) }
  scope :future, -> { where('date >= ?', Date.today).order(:date) }
  validates :location, :title, :date, presence: true
end
