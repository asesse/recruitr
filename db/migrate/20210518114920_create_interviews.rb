class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.references :recruiter, null: false, foreign_key: true
      t.references :candidate, null: false, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
