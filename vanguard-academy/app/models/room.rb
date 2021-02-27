class Room < ApplicationRecord

    has_many :student_rooms
    has_many :users, through: :student_rooms
    belongs_to :school
    has_one :instructor

end
