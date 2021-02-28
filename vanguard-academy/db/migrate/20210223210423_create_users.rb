class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :first_name
      t.string  :middle_name, default: ""
      t.string  :last_name
      t.integer :age
      t.integer :student_id, default: 000000
      t.integer :grade, default: 100
      t.float   :gpa, default: 4.0
      t.string  :email, default: ""
      t.string  :user_role, default: "student"
      t.string  :password
      
      t.timestamps
    end
  end
end
