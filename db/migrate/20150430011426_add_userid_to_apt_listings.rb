class AddUseridToAptListings < ActiveRecord::Migration
  def change
    add_column :apt_listings, :user_id, :integer
  end
end
