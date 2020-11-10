class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def order
    @customers = Customer.order("full_name ASC")
  end

  def missing_email
    @customers = Customer.where("email = ''")
  end
end
