class CreateRecruiterSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :recruiter_skills do |t|
      t.references :recruiter, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
