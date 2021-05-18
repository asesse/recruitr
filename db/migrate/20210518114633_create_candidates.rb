class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :email
      t.string :linkedin
      t.string :angellist
      t.references :position, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
