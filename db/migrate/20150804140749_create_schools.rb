class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :grade_level
      t.integer :teacher_id
      t.string :type
    end
  end
end
