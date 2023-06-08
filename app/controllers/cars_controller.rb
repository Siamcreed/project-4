class CarsController < ApplicationController
    before_action :set_driver
  
    def new
      @car = @driver.cars.new
    end
  
    def create
      @driver.cars.create(car_params)
      redirect_to @driver
    end
  
    private
  
    def set_driver
      @driver = Driver.find(params[:driver_id])
    end
  
    def car_params
      params.require(:car).permit(:brand_name, :downforce, :topspeed)
    end
  end
  