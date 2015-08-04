class Teacher < ActiveRecord::Base
  has_many :lesson_plans
  belongs_to :school
  belongs_to :user
end
