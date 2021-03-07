class Instructor < ApplicationRecord
    
    has_secure_password
    
    belongs_to  :room
    belongs_to  :school
    has_many :assignments

end
