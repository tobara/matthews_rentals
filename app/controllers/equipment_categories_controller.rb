class EquipmentCategoriesController < ApplicationController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Equipment Rentals", :equipment_categories_path

  def index
    @equipment_categories = EquipmentCategory.all
  end

  def show
    @equipment_categories = EquipmentCategory.all
    @equipment_category = EquipmentCategory.find(params[:id])
    @category_rentals = EquipmentRental.where(equipment_category_id: params[:id])
    add_breadcrumb "#{@equipment_category.category}"
    render :show
  end

  def new
    @equipment_categories = EquipmentCategory.all
      add_breadcrumb "Coming Soon", :new_equipment_category_path
  end
end
