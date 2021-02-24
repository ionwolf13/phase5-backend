class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string  :first_name
      t.string  :middle_name, default: ""
      t.string  :last_name
      t.integer :age
      t.integer :student_id, default: 000000
      t.integer :grade
      t.string  :email, default: ""
      t.string  :user_role, default: "student"
      t.timestamps
    end
  end
end
