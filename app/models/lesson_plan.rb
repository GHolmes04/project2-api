class LessonPlan < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :subject
end
