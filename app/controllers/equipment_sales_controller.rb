class EquipmentSalesController < ApplicationController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Equipment Sales", :equipment_sales_path

  def index
    @equipment_categories = EquipmentCategory.all
    add_breadcrumb "Coming Soon", :root_path
    @subscriber = Subscriber.new
  end
end
