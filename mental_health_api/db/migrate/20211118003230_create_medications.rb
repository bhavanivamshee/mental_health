class CreateMedications < ActiveRecord::Migration[6.1]
  def change
    create_table :medications do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string "name"
      t.integer "dose"
      t.date "first_dose"
      t.text "notes"
      t.timestamps
    end
  end
end
