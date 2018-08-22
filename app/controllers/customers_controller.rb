class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
  end

  def dashboard
    @customer = current_user.customer
  end

  def new
  end

  def edit
    @customer = current_user.customer
  end

  def update
    @customer = current_user.customer

    if @customer.update(customer_params)
    redirect_to dashboard_path

  else
    render :edit
  end
  end

  private

  def find_customer
    @customers = Customer.find([:id])
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :phone_number)
  end
end
