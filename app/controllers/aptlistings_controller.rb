class AptlistingsController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   @users = User.all
  # end

  def show
    # @apt_listing = AptListing.find(params[:bed]) #figure out how to send bed in params
    @aptlisting = AptListing.all
    # unless @user == current_user
      # redirect_to :back, :alert => "Access denied."
    # end
  end

  def new
    @aptlisting = AptListing.new
  end

  def create
    @aptlisting = AptListing.create(apt_params)
    if @aptlisting.save #If saving the user was successful
      @aptlisting.user = current_user
      redirect_to apt_listings_path #Go to view of all apt listings
    else
      redirect_to apt_listings_path #Go to the new view for the user
    end
  end  

  private
  def apt_params
    params.require(:apt_listing).permit(:address, :price, :date, :zipcode, :rooms, :baths, :gender, :details)
  end  

end
