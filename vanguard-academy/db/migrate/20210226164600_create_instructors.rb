class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.integer :school_id
      t.integer :room_id
      t.string  :first_name
      t.string  :middle_name
      t.string  :last_name
      t.string  :age
      t.string  :subject
      t.string  :username
      t.string  :email
      t.string  :password

      t.timestamps
    end
  end
end
