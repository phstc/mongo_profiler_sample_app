require 'mongo_profiler/web'

SampleApp::Application.routes.draw do
  mount MongoProfiler::Web => '/mongo_profiler'

  resources :customers,  only: :index
  resources :locations,  only: :index

  root 'customers#index'
end
