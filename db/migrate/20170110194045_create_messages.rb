class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :to_id
      t.string :subject
      t.text :content
      t.integer :from_id

      t.timestamps

    end
  end
end
