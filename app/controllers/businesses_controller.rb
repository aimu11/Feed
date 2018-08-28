class BusinessesController < ApplicationController
  def index
    @businesses = Business.where.not(latitude: nil, longitude: nil)
  end

  def create
  end

  def dashboard
    @inventory = current_user.business.foods.map {|f| f}
    @first_item = @inventory[0]

    @food_without_first = @inventory[1..-1]
    
    @food = Food.new

    if current_user.customer
      redirect_to dashboard_path
    end
  end

    def edit
      @business = current_user.business
    end

    def update
      @business = current_user.business
      @business.update(business_params)
      if @business.save
        flash[:notice] = "Profile details updated"
      redirect_to business_dashboard_path
    else
      render :edit
    end
    end

    private

    # def find_business
    #   @businesses = Business.find([:id])
    # end

    def business_params
      params.require(:business).permit(:description, :dietary_category, :address)
    end
  end
