class AddEmailToAptListings < ActiveRecord::Migration
  def change
    add_column :apt_listings, :email, :string
  end
end
