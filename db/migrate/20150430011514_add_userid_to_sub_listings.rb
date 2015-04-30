class AddUseridToSubListings < ActiveRecord::Migration
  def change
    add_column :sub_listings, :user_id, :integer
  end
end
