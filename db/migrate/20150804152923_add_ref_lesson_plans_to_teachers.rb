class AddRefLessonPlansToTeachers < ActiveRecord::Migration
  def change
    add_foreign_key :lesson_plans, :teachers
  end
end
