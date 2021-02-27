class School < ApplicationRecord
    
    has_many :rooms
    has_many :instructors   
    
end
