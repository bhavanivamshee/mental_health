class CreateConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :conditions do |t|
      t.belongs_to :behavior, null: false, foreign_key: true
      t.string "name"
      t.string "description"
      t.timestamps
    end
  end
end
