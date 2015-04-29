class SublistingsController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   @users = User.all
  # end

  def show_sublistings
    @sub_listing = SubListing.all #figure out how to send bed in params
    @sublistings = SubListing.all
    # unless @user == current_user
      # redirect_to :back, :alert => "Access denied."
    # end
  end

  def new
    @sublisting = SubListing.new
  end

  def create
    @sub_listing = SubListing.create(sub_params) #figure out how to save subletting parameters
    if @sub_listing.save #If saving the user was successful
      redirect_to @sub_listing #Go to the show view of the user
    else
      render "new" #Go to the new view for the user
    end
  end  

  def roomie
    @sub_listing = SubListing.all
  end

  private
  def sub_params
    params.require(:sub_listing).permit(:address, :price, :date, :zipcode, :rooms, :baths, :details, :gender)
  end  

end
