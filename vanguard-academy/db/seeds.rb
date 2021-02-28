# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
School.destroy_all
Room.destroy_all
StudentRoom.destroy_all

School.create(name: "Vanguard Academy", campus_id: "XD23H1")

User.create(first_name: "Jesus",last_name: "Garcia", username: "jesus", email: "jesus@gmail.com", password: "jesus")
User.create(first_name: "Israel",last_name: "Garcia", username: "israel", email: "israel@gmail.com", password: "israel")


Room.create(school_id: School.first.id, room_number: 10, subject: "Algebra I")
Room.create(school_id: School.first.id, room_number: 11, subject: "Biology I")
Room.create(school_id: School.first.id, room_number: 12, subject: "Chemistry I")
Room.create(school_id: School.first.id, room_number: 13, subject: "History I")
Room.create(school_id: School.first.id, room_number: 14, subject: "Algebra II")
Room.create(school_id: School.first.id, room_number: 15, subject: "Physics I")
Room.create(school_id: School.first.id, room_number: 100, subject: "Gym")
Room.create(school_id: School.first.id, room_number: 16, subject: "English I")

StudentRoom.create(user_id: User.first.id, room_id: Room.first.id)
StudentRoom.create(user_id: User.first.id, room_id: Room.second.id)
StudentRoom.create(user_id: User.second.id, room_id: Room.first.id)
StudentRoom.create(user_id: User.second.id, room_id: Room.third.id)



Instructor.create(first_name: "Dane",last_name: "Dawson", school_id: School.first.id, room_id: Room.first.id)
Instructor.create(first_name: "Antonio",last_name: "Reid", school_id: School.first.id, room_id: Room.second.id)
Instructor.create(first_name: "Matteo",last_name: "Ricci", school_id: School.first.id, room_id: Room.fourth.id)
Instructor.create(first_name: "Raul",last_name: "Sanchez", school_id: School.first.id, room_id: Room.all[5].id)
Instructor.create(first_name: "Angelo",last_name: "Xenakis", school_id: School.first.id, room_id: Room.all[7].id)
Instructor.create(first_name: "Mansour",last_name: "Cheyo", school_id: School.first.id, room_id: Room.all[6].id)
Instructor.create(first_name: "Adam",last_name: "Johson", school_id: School.first.id, room_id: Room.fifth.id)
Instructor.create(first_name: "Marc",last_name: "Majcher", school_id: School.first.id, room_id: Room.third.id)



puts "Seed Page Loaded"