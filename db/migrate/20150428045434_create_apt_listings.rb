class CreateAptListings < ActiveRecord::Migration
  def change
    create_table :apt_listings do |t|
      t.string :address
      t.integer :zipcode
      t.integer :rooms
      t.integer :baths
      t.string :date
      t.string :details

      t.timestamps
    end
  end
end
