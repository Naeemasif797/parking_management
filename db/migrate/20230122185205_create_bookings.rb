class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :booking_from
      t.datetime :booking_to
      t.references :user, null: false, foreign_key: true
      t.references :slot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
