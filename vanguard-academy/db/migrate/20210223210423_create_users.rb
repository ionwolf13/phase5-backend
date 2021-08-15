class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :first_name
      t.string  :middle_name, default: ""
      t.string  :last_name
      t.integer :age
      t.string  :learning_style, default: "none"
      t.string  :profile_image, default: "profileDefault"
      t.string  :student_school_number, default: "000000"
      t.integer :grade, default: 100
      t.float   :gpa, default: 4.0
      t.string  :email, default: ""
      t.string  :email_confirmation
      t.string  :user_role, default: "student"
      t.string  :password_digest
      t.boolean :vaccination_document, default: false
      t.boolean :school_history_document, default: false
      t.string  :code_of_conduct, default: "Excellent"
      
      t.timestamps
    end
  end
end
