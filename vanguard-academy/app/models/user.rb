class User < ApplicationRecord

    has_secure_password
    
    has_many :student_rooms
    has_many :rooms, through: :student_rooms

    has_many :student_assignments
    has_many :assignments, through: :student_assignments
    
    # validates :username, uniqueness: true
    # validates :email, uniqueness: true 
    # validates :email, confirmation: true
    
    #maybe try and add some logic to all of this

   def userFullName
        return self.first_name + self.middle_name + self.last_name
   end

end 
