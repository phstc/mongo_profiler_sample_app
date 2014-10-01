SampleApp::Application.routes.draw do
  require 'mongo_profiler/web'
  mount MongoProfiler::Web => '/mongo_profiler'

  resources :customers,  only: :index
  resources :locations,  only: :index

  root 'customers#index'
end
