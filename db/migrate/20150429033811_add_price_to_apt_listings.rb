class AddPriceToAptListings < ActiveRecord::Migration
  def change
    add_column :apt_listings, :price, :decimal
  end
end
