class Customer
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :location_id

  def initialize(attributes)
    @id          = attributes['_id']
    @first_name  = attributes['first_name']
    @last_name   = attributes['last_name']
    @email       = attributes['email']
    @location_id = attributes['location_id']
  end

  def location
    Location.find_by_id(location_id)
  end

  def self.all
    DB['customers'].find.map &method(:new)
  end
end
