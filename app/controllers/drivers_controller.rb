class DriversController < ApplicationController
    def index
        @drivers = Driver.all
    end

    def show
        @driver = Driver.find(params[:id])
        @cars = @driver.cars
    end

    def new
        @driver = Driver.new
    end
end
