class Location
  attr_reader :id
  attr_accessor :country

  def initialize(attributes)
    @id = attributes['_id']
    @country = attributes['country']
  end

  def customers_count
    DB['customers'].find(location_id: id).count
  end

  def self.all
    DB['locations'].find.map &method(:new)
  end

  def self.find_by_id(id)
    new(DB['locations'].find_one(_id: id))
  end
end
