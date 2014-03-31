class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :mongo_profiler_setup

  private

  def mongo_profiler_setup
    # aggregate queries by request
    MongoProfiler.group_id = "request-#{request.uuid}"

    # to show the request url
    MongoProfiler.extra_attrs[:request_url] = request.url
  end
end
