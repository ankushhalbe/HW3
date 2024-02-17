class PlacesController < ApplicationController
  def index 
    render :template => "places/index"
    @places = Places.all
  end
end

def show
   @place = Places.find_by({"id" => params["id"]})
end

def new

end

def create
@places = Places.new
@places["name"] = params ["name"]
@places.save
redirect_to "/places"
end