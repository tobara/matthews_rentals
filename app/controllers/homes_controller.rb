class HomesController < ApplicationController
  add_breadcrumb "Home", :root_path

  def index
    @equipment_categories = EquipmentCategory.all
  end

  def about
    add_breadcrumb "About", :about_path
    @equipment_categories = EquipmentCategory.all
  end

  def contact_us
    add_breadcrumb "Contact Us", :contact_us_path
    @equipment_categories = EquipmentCategory.all
  end

  def login
    add_breadcrumb "Contact Us", :login_path
    @equipment_categories = EquipmentCategory.all
  end
end
