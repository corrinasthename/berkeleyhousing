class AptListing < ActiveRecord::Base
  belongs_to :user 
  validates :address, :price, presence: true
end
