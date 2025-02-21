class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    # @place_name = Entry.find_by ({"place_id" => @place["id"]})
    # @entry_title = @entries["title"]
    # @entry_description = @entries["description"]
    # @entry_date = @entries["ocurred_on"]
  end

  def new
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["date"]
  end

end
