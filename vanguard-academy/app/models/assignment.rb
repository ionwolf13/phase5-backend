class Assignment < ApplicationRecord
    
    has_many :student_assignments
    has_many :users, through: :student_assignments
    belongs_to :instructor

end
