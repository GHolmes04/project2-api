# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(and dna dan nad).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email, password: 'abc123', password_confirmation: 'abc123')

end
    Subject.create!(subject: 'Web Development')

    School.create!(name: "General Assembly", grade_level: "Post Grad")

    Teacher.create!(username: 'greggy', school_id: 1, user_id: 1)

    LessonPlan.create!(title: 'AJAX 101', content: 'Look at this amazing lesson plan', target_grade_level: '7th', teacher_id: 1, subject_id: 1)


