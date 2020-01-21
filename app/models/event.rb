class Event < ApplicationRecord
  belongs_to :sport
  has_many :event_attendees
  has_many :users, through: :event_attendees
end
