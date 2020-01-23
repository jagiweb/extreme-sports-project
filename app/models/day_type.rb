class DayType < ApplicationRecord
  has_many :events
  has_many :sports, through: :events
  has_many :event_attendees, through: :events
end
