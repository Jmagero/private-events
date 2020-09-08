class User < ApplicationRecord
  has_many :event_managers, foreign_key: :attendee_id
  has_many :attended_events, through: :event_managers
  has_many :events, :foreign_key => :creator_id
end


