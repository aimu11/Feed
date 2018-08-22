class BusinessesController < ApplicationController
  def index
    @businesses = Business.where.not(latitude: nil, longitude: nil)

    @markers = @businesses.map do |business|
      {
        lat: business.latitude,
        lng: business.longitude,
      }
    end
  end

  def dashboard
    if current_user.customers
      redirect_to dashboard_path
    end
  end
end
