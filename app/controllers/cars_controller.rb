class CarsController < ApplicationController
    def new
        @driver = Driver.find(params[:driver_id])
        @car = @driver.cars.new
    end

    def create
        @driver = Driver.find(params[:driver_id])
        @driver.cars.create(params.require(:car).permit(:brand_name, :downforce, :topspeed))
        
        redirect_to @driver
    end
end
