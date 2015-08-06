class AddSubjectIdToLessonPlans < ActiveRecord::Migration
  def change
    add_reference :lesson_plans, :subject, index: true, foreign_key: true
  end
end
