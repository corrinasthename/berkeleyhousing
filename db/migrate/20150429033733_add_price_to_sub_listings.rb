class AddPriceToSubListings < ActiveRecord::Migration
  def change
    add_column :sub_listings, :price, :decimal
  end
end
