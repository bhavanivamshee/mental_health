class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers do |t|
      t.belongs_to :insurance, null: false, foreign_key: true
      t.string "name"
      t.string "address"
      t.string "phone"
      t.date "first_visit"
      t.text "notes"
      t.timestamps
    end
  end
end
