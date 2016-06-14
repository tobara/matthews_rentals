class EquipmentCategoriesController < ApplicationController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Equipment Rentals", :equipment_categories_path

  def index
    @equipment_categories = EquipmentCategory.all
    @subscriber = Subscriber.new
  end

  def show
    @equipment_categories = EquipmentCategory.all
    @equipment_category = EquipmentCategory.find(params[:id])
    @category_rentals = EquipmentRental.where(equipment_category_id: params[:id])
    @popular_rentals = EquipmentRental.all
    add_breadcrumb "#{@equipment_category.category}"
    @subscriber = Subscriber.new
    render :show
  end

  def new
    @equipment_categories = EquipmentCategory.all
      add_breadcrumb "Coming Soon", :new_equipment_category_path
    @subscriber = Subscriber.new
  end
end
