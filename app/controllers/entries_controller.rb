class EntriesController < ApplicationController

  def new
    @place = Place.find_by ({"id" => params["place_id"]})
  end

  def create
    @entry = Entry.new
    
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["date"]

    @entry["place_id"] = params["place_id"]

    @entry.save
    redirect_to "/places/#{params["place_id"]}" 
    # alternatively, we can also write redirect_to "/places/#{@entry["place_id"]}"
  end

end
