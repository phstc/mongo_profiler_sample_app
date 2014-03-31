class Setup
  def self.seed(size = 10)
    DB['customers'].remove
    DB['locations'].remove

    size.times do
      location_country = Faker::Address.country
      location = DB['locations'].find_and_modify(query: { country: location_country }, update: { country: location_country }, upsert: true, new: true)

      DB['customers'].insert({
        first_name:  Faker::Name.first_name,
        last_name:   Faker::Name.last_name,
        email:       Faker::Internet.email,
        location_id: location['_id']
      })
    end
  end
end
