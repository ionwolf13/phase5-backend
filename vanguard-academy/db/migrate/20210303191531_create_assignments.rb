class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.integer :instructor_id
      t.string  :assignment_name, default: "Pop Quiz"
      t.string  :assignment_topic, default: "Home Work"
      t.integer :level_difficulty, default: "0"
      t.integer :grade_level, default: 100
      t.float   :score_average, default: 100

      t.timestamps
    end
  end
end
