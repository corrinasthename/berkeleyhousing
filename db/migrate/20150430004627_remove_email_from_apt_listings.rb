class RemoveEmailFromAptListings < ActiveRecord::Migration
  def change
    remove_column :apt_listings, :email, :string
  end
end
