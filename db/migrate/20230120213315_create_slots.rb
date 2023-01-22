class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.string :zone
      t.string :slot_type
      t.string :status
      t.references :parking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
