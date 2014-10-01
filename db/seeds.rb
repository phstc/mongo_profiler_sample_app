# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Customer.delete_all
Location.delete_all

20.times do
  location = Location.find_or_create_by(country: Faker::Address.country)

  rand(1..10).times do
    location.customers.create(
      first_name:  Faker::Name.first_name,
      last_name:   Faker::Name.last_name,
      email:       Faker::Internet.email
    )
  end
end
