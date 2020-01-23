class Location < ApplicationRecord
  belongs_to :sport
  has_many :events
end
