class CreateUserreviews < ActiveRecord::Migration
  def change
    create_table :userreviews do |t|
      t.integer :reviewer_id
      t.integer :reviewed_id
      t.string :title
      t.text :content
      t.integer :rating
      t.integer :booking_id

      t.timestamps

    end
  end
end
