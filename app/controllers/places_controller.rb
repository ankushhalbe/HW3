class PlacesController < ApplicationController

  def index 
    @place = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entry = Entry.where({"place_id" => @place["id"]})
    
  end

  def new

  end

  def create
  @place = Place.new
  @place["name"] = params["name"]
  @place.save
  redirect_to "/places"
  end


  def destroy
  @place = Place.destroy  
  @place["name"] = params["name"]
  @place.save
  redirect_to "/places"
  end   
end 