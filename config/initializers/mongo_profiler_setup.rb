require 'mongo_profiler'
require 'mongo_profiler/extensions/mongo/cursor'

MongoProfiler.setup_database(DB)

MongoProfiler.application_name = 'Sample App'
