class User < ApplicationRecord
    has_many :event_attendees
    has_many :events, through: :event_attendees

    has_secure_password
    validates :email, presence: true, uniqueness: true
<<<<<<< HEAD
    validates :password, presence: true, :length => {:within => 6..40}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

=======
>>>>>>> d044f48b990fa929d40c6d51ad09619a1d73eacf
    
end
