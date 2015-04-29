class CreateSubListings < ActiveRecord::Migration
  def change
    create_table :sub_listings do |t|
      t.string :address
      t.integer :zipcode
      t.integer :rooms
      t.integer :baths
      t.string :date
      t.string :gender
      t.string :details

      t.timestamps
    end
  end
end
