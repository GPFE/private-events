class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id
  has_many :attendable_events, foreign_key: 'event_id'
  has_many :attendees, through: :attendable_events, source: :attendee
end
