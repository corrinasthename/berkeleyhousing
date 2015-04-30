class RemoveEmailFromSubListings < ActiveRecord::Migration
  def change
    remove_column :sub_listings, :email, :string
  end
end
