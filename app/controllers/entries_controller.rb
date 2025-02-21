class EntriesController < ApplicationController


  def index
    @entries = Entry.all
    # @entry = Entry.find_by ({"id" => params["id"]})  
    # @place = Place.find_by ({"id" => @entry["place_id"]})
  end

  def new
  end

  def create
    @entry = Entry.new
    
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["date"]

    @entry["place_id"] = params["place_id"]

    @entry.save
    redirect_to "/entries/#{@entry["place_id"]}"
  end

end
