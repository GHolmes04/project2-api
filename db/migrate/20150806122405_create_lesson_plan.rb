class CreateLessonPlan < ActiveRecord::Migration
  def change
    create_table :lesson_plans do |t|
      t.string :title
      t.string :content
      t.string :target_grade_level
    end
  end
end
