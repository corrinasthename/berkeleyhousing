class AptlistingsController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   @users = User.all
  # end

  def show
    # @apt_listing = AptListing.find(params[:bed]) #figure out how to send bed in params
    @apt_listing = AptListing.all
    # unless @user == current_user
      # redirect_to :back, :alert => "Access denied."
    # end
  end

  def new
    @aptlisting = AptListing.new
  end

  def create
    @apt_listing = AptListing.create(apt_params)
    if @apt_listing.save #If saving the user was successful
      redirect_to @apt_listing #Go to the show view of the user
    else
      render "new" #Go to the new view for the user
    end
  end  

  private
  def sub_params
    params.require(:apt_listings).permit(:address, :price, :date, :zipcode, :rooms, :baths, :gender, :details)
  end  

end
