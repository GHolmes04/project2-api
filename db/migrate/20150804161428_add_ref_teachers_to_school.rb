class AddRefTeachersToSchool < ActiveRecord::Migration
  def change
    add_reference :teachers, :school, index: true, foreign_key: true
  end
end
