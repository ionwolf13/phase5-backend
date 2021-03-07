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
      t.string  :email_confirmation
      t.integer :phone_number, default: 0001230000
      t.string  :password_digest
      t.string  :user_role, default: "instructor"
      t.string  :hobbies, default: "Flat Iron"

      t.timestamps
    end
  end
end
