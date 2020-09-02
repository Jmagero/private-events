class Event < ApplicationRecord
  has_many :event_managers, foreign_key: :attended_event_id
  has_many :attendees, through: :event_managers, source: :attendee
  belongs_to :creator, :class_name => "User"

  scope :past, -> { where('date < ?', Time.current) }

  scope :upcoming, -> { where('date > ?', Time.current) }

end
