class Instructor < ApplicationRecord
    belongs_to  :room
    belongs_to  :school


    student model
        has_many :student_assignments
        has_many assignments, through studnet_assignments


    studnet_assignments
        belongs_to :student
        belongs_to  :assignment


    assignments model
    has_many :student_assignments
    has_many studnets through studnet_assignments
        belongs_to  :instructor


    instructor model
        has_many :assignments


        
end
