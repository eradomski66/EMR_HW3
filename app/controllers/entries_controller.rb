class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["description"] = params["description"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places"
  end

  def new
  
  end

end
