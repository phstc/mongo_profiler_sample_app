class CustomersController < ApplicationController
  respond_to :html

  def index
    @customers = Customer.where(request.query_parameters).all
  end
end
