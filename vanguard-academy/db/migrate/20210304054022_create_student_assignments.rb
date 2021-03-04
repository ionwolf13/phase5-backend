class CreateStudentAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :student_assignments do |t|

      t.timestamps
    end
  end
end
