class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :price
      t.date :date
      t.integer :listing_id
      t.boolean :booked

      t.timestamps

    end
  end
end
