class DriversController < ApplicationController
    before_action :set_driver, only: [:show, :edit, :update, :destroy]
    
    def index
        @drivers = Driver.all
    end

    def show
        @cars = @driver.cars
    end

    def new
        @driver = Driver.new
    end

    def create
        Driver.create(driver_params)

        redirect_to drivers_path
    end

    def edit
        
    end

    def update
        
         @driver.update(driver_params)

        redirect_to @driver
    end

    def destroy
        
      
        @driver.destroy

        redirect_to drivers_path
    end

    private

    def set_driver
        @driver = Driver.find(params[:id])
    end

    def driver_params
        params.require(:driver).permit(:first_name, :last_name, :wins)
    end
end
