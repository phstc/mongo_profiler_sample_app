class CustomersController < ApplicationController
  respond_to :html

  def index
    @customers = Customer.all
  end
end
