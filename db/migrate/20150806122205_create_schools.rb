class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :grade_level
      t.timestamps null: false
    end
  end
end
