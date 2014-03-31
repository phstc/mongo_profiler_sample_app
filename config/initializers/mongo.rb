require 'mongo'
require 'uri'

# https://devcenter.heroku.com/articles/mongolab

def get_connection
  if Rails.env.production?
    mongo_uri = ENV['MONGOLAB_URI']
    db_name = mongo_uri[%r{/([^/\?]+)(\?|$)}, 1]
    client = Mongo::MongoClient.from_uri(mongo_uri)
    client.db(db_name)
  else
    client = Mongo::MongoClient.new
    client.db('sample_app_database')
  end
end

DB ||= get_connection
