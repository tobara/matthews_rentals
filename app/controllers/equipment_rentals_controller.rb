class EquipmentRentalsController < ApplicationController

  def show
    @equipment_rental = EquipmentRental.find(params[:id])
    @subscriber = Subscriber.new
    render :show
  end
end
