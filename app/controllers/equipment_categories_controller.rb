class EquipmentCategoriesController < ApplicationController

  def index
    @equipment_categories = EquipmentCategory.all
     render :index
      # if params[:search]
      #   @rentals = Rental.search(params[:search]).
      #     order(:name).
      #     page(params[:page])
      # else

      # end
    end

    def show
      @equipment_categories = EquipmentCategory.all
      @equipment_category = EquipmentCategory.find(params[:id])
      @category_rentals = EquipmentRental.where(equipment_category_id: params[:id])
      render :show
    end
end
