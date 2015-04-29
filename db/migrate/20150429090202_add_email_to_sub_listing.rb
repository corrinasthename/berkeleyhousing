class AddEmailToSubListing < ActiveRecord::Migration
  def change
    add_column :sub_listings, :email, :string
  end
end
