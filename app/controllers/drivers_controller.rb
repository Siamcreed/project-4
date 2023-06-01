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

    def create
        Driver.create(params.require(:driver).permit(:first_name, :last_name, :wins))

        redirect_to drivers_path
    end
end
