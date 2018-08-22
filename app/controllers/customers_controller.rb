class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
  end

  def dashboard
    if current_user.businesses
      redirect_to business_dashboard_path
    end
  end

  def new
  end

  def edit
  end

  def update
  end

  private

  def find_customer
    @customers = Customer.find(params[food_params])
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :phone_number)
  end
end
