class CreateSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.string  :name
      t.string  :campus_id, default: "XDY091"
      t.boolean :public, default: true
      t.string  :principal, default: "FlatIron"
      t.string  :concentration, default: "Technology"
      t.string  :level_of_education, default: "High School"
      t.integer :classrooms, default: 20
      t.string  :address, default: ""
      t.integer :phone, default: 000
      t.timestamps
    end
  end
end
