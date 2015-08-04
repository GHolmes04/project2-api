class AddTeacherIdToLessonPlans < ActiveRecord::Migration
  def change
    add_reference :lesson_plans, :teachers, index: true, foreign_key: true
  end
end
