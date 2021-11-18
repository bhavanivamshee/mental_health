class CreateInsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :insurances do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string "name"
      t.string "address"
      t.string "phone"
      t.text "notes"
      t.timestamps
    end
  end
end
