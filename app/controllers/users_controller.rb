class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def all
    @sub_listing = SubListing.all
    @apt_listing = AptListing.all
  end

  def choose
  end
  
  def contact
    @user = current_user
  end

  def message1
    redirect_to all_listings_path
  end

end
