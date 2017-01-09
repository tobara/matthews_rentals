class EquipmentPurchasesController < ApplicationController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Equipment Purchasing", :equipment_purchases_path

  def index
    @equipment_categories = EquipmentCategory.all
    add_breadcrumb "Coming Soon", :root_path
    @subscriber = Subscriber.new
  end
end
