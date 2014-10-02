class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_mongo_profile_group_name
  # before_filter :set_mongo_profile_group_name, unless: -> { Rails.env.production? }

  def set_mongo_profile_group_name
    require 'mongo_profiler'
    MongoProfiler.current_group_name = request.url
  end
end
