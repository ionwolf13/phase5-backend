class Instructor < ApplicationRecord
    
    belongs_to  :room
    belongs_to  :school
    has_many :assignments

end
