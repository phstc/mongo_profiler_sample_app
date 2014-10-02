SampleApp::Application.routes.draw do
  # unless Rails.env.production?
    require 'mongo_profiler'
    require 'mongo_profiler/web'
    mount MongoProfiler::Web => '/mongo_profiler'
    # Security with Devise
    # authenticate :user do
    #  mount MongoProfiler::Web => '/mongo_profiler'
    # end
    #
    # authenticate :user, lambda { |u| u.admin? } do
    #  mount MongoProfiler::Web => '/mongo_profiler'
    # end
  # end

  resources :customers,  only: :index
  resources :locations,  only: :index

  root 'customers#index'
end
