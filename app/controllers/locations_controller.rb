class LocationsController < ApplicationController
  respond_to :html

  def index
    @locations = Location.all
  end
end
