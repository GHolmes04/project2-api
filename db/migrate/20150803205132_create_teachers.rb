class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :email
      t.string :username
      t.integer :school_id
      t.integer :lesson_plan_id
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end

  end
end
