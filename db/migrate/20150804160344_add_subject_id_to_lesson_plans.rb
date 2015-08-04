class AddSubjectIdToLessonPlans < ActiveRecord::Migration
  def change
    add_reference :lesson_plans, :subjects, index: true, foreign_key: true
  end
end
