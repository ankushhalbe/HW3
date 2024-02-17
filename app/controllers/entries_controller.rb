class EntriesController < ApplicationController
  def index 
  @entry = Entry.all 
  end 
end

def new

end 

def create
  @entry = Entry.new
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry.save
  redirect_to "/entries"
  end