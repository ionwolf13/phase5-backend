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

School.create(name: "Wharton", campus_id: "XD23H1")

User.create(first_name: "Jesus",last_name: "Garcia")
User.create(first_name: "Israel",last_name: "Garcia")

Room.create(school_id: School.first.id, room_number: 10, subject: "Math")
Room.create(school_id: School.first.id, room_number: 11, subject: "Biology")
Room.create(school_id: School.first.id, room_number: 12, subject: "Chemistry")
Room.create(school_id: School.first.id, room_number: 13, subject: "History")

StudentRoom.create(user_id: User.first.id, room_id: Room.first.id)
StudentRoom.create(user_id: User.first.id, room_id: Room.second.id)
StudentRoom.create(user_id: User.second.id, room_id: Room.first.id)
StudentRoom.create(user_id: User.second.id, room_id: Room.third.id)



puts "Seed Page Loaded"