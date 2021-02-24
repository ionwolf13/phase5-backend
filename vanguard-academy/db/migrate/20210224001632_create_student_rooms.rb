class CreateStudentRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :student_rooms do |t|
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
