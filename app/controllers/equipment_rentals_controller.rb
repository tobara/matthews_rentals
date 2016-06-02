class EquipmentRentalsController < ApplicationController



    def show

      @equipment_rental = EquipmentRental.find(params[:id])
      render :show
    end
end
