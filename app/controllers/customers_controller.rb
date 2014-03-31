class CustomersController < ApplicationController
  respond_to :html

  def index
    customers = 100.times.inject([]) do |customers_acc|
      customers_acc << {
        first_name:  Faker::Name.first_name,
        last_name:   Faker::Name.last_name,
        email:       Faker::Internet.email
      }
    end

    # DB['customers'].insert(customers)

    @customers = DB['customers'].find
  end
end
