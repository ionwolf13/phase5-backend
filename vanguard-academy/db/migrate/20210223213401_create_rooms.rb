class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :school_id
      t.integer :room_number
      t.string  :subject
      t.string  :teacher
      t.integer :time


      t.timestamps
    end
  end
end
