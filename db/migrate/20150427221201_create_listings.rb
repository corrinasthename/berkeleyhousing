class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.integer :zipcode
      t.integer :rooms
      t.integer :baths
      t.string :type

      t.timestamps
    end
  end
end
