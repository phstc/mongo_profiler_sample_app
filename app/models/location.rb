class Location
  include Mongoid::Document
  include Mongoid::Timestamps

  field :country

  has_many :customers
end
