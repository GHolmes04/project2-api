class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :username
      t.integer :lesson_plan_id
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end

  end
end
