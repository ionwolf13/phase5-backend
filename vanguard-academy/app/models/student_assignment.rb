class StudentAssignment < ApplicationRecord

    belongs_to  :user
    belongs_to  :assignment
    
end
