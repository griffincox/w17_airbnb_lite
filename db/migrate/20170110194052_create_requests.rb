class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :booking_id
      t.text :introduction
      t.integer :from_id

      t.timestamps

    end
  end
end
