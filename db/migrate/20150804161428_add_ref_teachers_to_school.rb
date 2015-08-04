class AddRefTeachersToSchool < ActiveRecord::Migration
  def change
    add_reference :teachers, :schools, index: true, foreign_key: true
  end
end
