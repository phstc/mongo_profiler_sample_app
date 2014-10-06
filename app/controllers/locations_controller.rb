class LocationsController < ApplicationController
  respond_to :html

  def index
    @locations = Location.where(request.query_parameters).all
  end
end
