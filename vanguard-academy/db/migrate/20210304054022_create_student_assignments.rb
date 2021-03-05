class CreateStudentAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :student_assignments do |t|
      t.integer :user_id
      t.integer :assignment_id
      t.integer :student_score, default: 100 
      t.timestamps
    end
  end
end
