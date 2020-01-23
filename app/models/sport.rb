class Sport < ApplicationRecord
  has_many :events
  has_many :locations
  has_many :day_types, through: :events


  
end
