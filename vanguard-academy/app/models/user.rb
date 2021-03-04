class User < ApplicationRecord

    has_many :student_rooms
    has_many :rooms, through: :student_rooms

    has_secure_password
end
