class CreateListingreviews < ActiveRecord::Migration
  def change
    create_table :listingreviews do |t|
      t.integer :user_id
      t.integer :accuracy
      t.integer :communication
      t.integer :cleanliness
      t.integer :location
      t.integer :check_in
      t.integer :value
      t.text :content
      t.integer :listing_id

      t.timestamps

    end
  end
end
