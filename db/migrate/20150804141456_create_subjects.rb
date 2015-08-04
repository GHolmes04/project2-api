class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :english
      t.string :math
      t.string :science
      t.string :history
      t.string :social_studies
      t.string :foreign_languages
      t.string :technology
      t.string :pe
      t.string :art
      t.string :music
      t.string :other
      t.integer :lesson_plan_id
    end
  end
end
