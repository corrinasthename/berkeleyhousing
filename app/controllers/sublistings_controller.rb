class SublistingsController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   @users = User.all
  # end

  def show
    @sublisting = SubListing.all
    # unless @user == current_user
      # redirect_to :back, :alert => "Access denied."
    # end
  end

  def new
    @sublisting = SubListing.new
  end

  def create
    @sublisting = SubListing.create(sub_params) #figure out how to save subletting parameters
    if @sublisting.save #If saving the user was successful
      redirect_to sub_listings_path #Go to all sublease listings
    else
      redirect_to sub_listings_path
      # render "new" #Go to the new view for the user
    end
  end  

  def roomie
    @sublisting = SubListing.all
  end

  private
  def sub_params
    params.require(:sub_listing).permit(:address, :price, :date, :zipcode, :rooms, :baths, :details, :gender)
  end  

end
