class BusinessesController < ApplicationController
  def index
    @businesses = Business.where.not(latitude: nil, longitude: nil)
  end



  def dashboard
    @food = Food.new
    if current_user.customer
      redirect_to dashboard_path
    end
  end

end
