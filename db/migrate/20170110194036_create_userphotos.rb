class CreateUserphotos < ActiveRecord::Migration
  def change
    create_table :userphotos do |t|
      t.integer :listing_id

      t.timestamps

    end
  end
end
