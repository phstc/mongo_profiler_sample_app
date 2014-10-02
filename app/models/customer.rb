class Customer
  include Mongoid::Document
  include Mongoid::Timestamps

  field :first_name
  field :last_name
  field :email

  belongs_to :location

  index location_id: 1
  index email: 1
end
