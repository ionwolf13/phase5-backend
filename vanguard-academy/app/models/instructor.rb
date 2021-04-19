class Instructor < ApplicationRecord
    
    has_secure_password
    
    belongs_to  :room
    belongs_to  :school
    has_many :assignments

    def instructorFullname
        return self.first_name + self.middle_name + self.last_name
    end
end
