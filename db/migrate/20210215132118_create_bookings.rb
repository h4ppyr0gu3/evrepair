class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :status, default: 0
      t.datetime :booking_from
      t.datetime :booking_to
      t.references :user

      t.timestamps
    end
  end
end
