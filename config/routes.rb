require 'mongo_profiler/web'

SampleApp::Application.routes.draw do
  mount MongoProfiler::Web => '/mongo_profiler'
  resources :customers

  root 'customers#index'
end
