class User < ApplicationRecord
    has_many :event_attendees
    has_many :events, through: :event_attendees

    has_secure_password
    validates :email, presence: true, uniqueness: true

    
end
