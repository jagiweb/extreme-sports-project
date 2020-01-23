class Event < ApplicationRecord
  belongs_to :location
  belongs_to :sport
  belongs_to :day_type
  has_many :event_attendees
  has_many :users, through: :event_attendees
end
