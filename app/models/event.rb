class Event < ApplicationRecord
  belongs_to :creator, :class_name => "User"
  has-many :event_managers, foreign_key: :attendee_id
  has_many :attendees, through: :event_manager, source: :attendee
end
