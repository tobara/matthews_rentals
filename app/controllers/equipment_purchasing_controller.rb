class EquipmentPurchasingController < ApplicationController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Equipment Purchasing", :equipment_purchasing_index_path

  def index
    @equipment_categories = EquipmentCategory.all
    add_breadcrumb "Coming Soon", :root_path
  end
end
