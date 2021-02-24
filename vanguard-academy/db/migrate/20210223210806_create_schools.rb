class CreateSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.string  :name
      t.string  :campus_id
      t.boolean :public, default: true
      t.string  :principal
      t.string  :concentration
      t.string  :level_of_education
      t.integer :classrooms
      t.string  :address
      t.integer :phone
      t.timestamps
    end
  end
end
