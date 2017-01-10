class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.boolean :room_type
      t.integer :user_id
      t.text :description
      t.integer :bedroom_count
      t.integer :bathroom_count
      t.integer :bed_count
      t.integer :max_occupancy
      t.string :city
      t.string :neighborhood
      t.time :check_in_time
      t.integer :nightly_price
      t.string :address

      t.timestamps

    end
  end
end
